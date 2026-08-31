import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import type { Adaptation } from "@/lib/types";

// This is the homepage: a searchable, filterable list of every adaptation
// in the database. It's a Server Component, meaning the search happens on
// the server before the page is sent to the browser — no extra JavaScript
// needed for basic search/filter, just a plain HTML form.
export default async function Home({
  searchParams,
}: PageProps<"/">) {
  const params = await searchParams;
  const q = typeof params.q === "string" ? params.q.trim() : "";
  const genre = typeof params.genre === "string" ? params.genre : "";

  const supabase = await createClient();

  // Build the main query. Start with everything, then narrow it down based
  // on whatever the visitor typed into the search box / picked from the
  // genre dropdown.
  let query = supabase
    .from("adaptations")
    .select("*")
    .order("title", { ascending: true });

  if (q) {
    const pattern = `%${q}%`;
    query = query.or(
      `title.ilike.${pattern},author.ilike.${pattern},movie_title.ilike.${pattern},director.ilike.${pattern}`
    );
  }

  if (genre) {
    query = query.contains("genres", [genre]);
  }

  const { data: adaptations, error } = await query;

  // Separately, grab every genre that exists in the database (unfiltered)
  // so the dropdown always shows all the options, not just the ones that
  // match the current search.
  const { data: genreRows } = await supabase.from("adaptations").select("genres");
  const allGenres = Array.from(
    new Set((genreRows ?? []).flatMap((row) => row.genres ?? []))
  ).sort();

  // Count how many approved difference entries each adaptation has, so we
  // can show a "X differences logged" badge on each card.
  const { data: entryRows } = await supabase
    .from("difference_entries")
    .select("adaptation_id")
    .eq("status", "approved");
  const differenceCounts = new Map<string, number>();
  for (const row of entryRows ?? []) {
    differenceCounts.set(
      row.adaptation_id,
      (differenceCounts.get(row.adaptation_id) ?? 0) + 1
    );
  }

  return (
    <div className="min-h-full bg-zinc-50 dark:bg-black">
      <div className="mx-auto max-w-5xl px-6 py-12">
        <header className="mb-10">
          <h1 className="text-3xl font-bold tracking-tight text-zinc-900 dark:text-zinc-50">
            Book vs. Movie
          </h1>
          <p className="mt-2 text-zinc-600 dark:text-zinc-400">
            A crowdsourced reference for what changed between the book and the
            movie.
          </p>
        </header>

        <form
          method="GET"
          className="mb-8 flex flex-col gap-3 sm:flex-row sm:items-center"
        >
          <input
            type="text"
            name="q"
            defaultValue={q}
            placeholder="Search by title, author, or director…"
            className="w-full rounded-lg border border-zinc-300 bg-white px-4 py-2 text-zinc-900 shadow-sm focus:border-zinc-500 focus:outline-none dark:border-zinc-700 dark:bg-zinc-900 dark:text-zinc-50 sm:flex-1"
          />
          <select
            name="genre"
            defaultValue={genre}
            className="w-full rounded-lg border border-zinc-300 bg-white px-4 py-2 text-zinc-900 shadow-sm focus:border-zinc-500 focus:outline-none dark:border-zinc-700 dark:bg-zinc-900 dark:text-zinc-50 sm:w-56"
          >
            <option value="">All genres</option>
            {allGenres.map((g) => (
              <option key={g} value={g}>
                {g}
              </option>
            ))}
          </select>
          <button
            type="submit"
            className="w-full rounded-lg bg-zinc-900 px-5 py-2 font-medium text-white transition-colors hover:bg-zinc-700 dark:bg-zinc-50 dark:text-zinc-900 dark:hover:bg-zinc-300 sm:w-auto"
          >
            Search
          </button>
        </form>

        {error && (
          <p className="rounded-lg border border-red-300 bg-red-50 px-4 py-3 text-red-800 dark:border-red-900 dark:bg-red-950 dark:text-red-200">
            Something went wrong loading adaptations: {error.message}
          </p>
        )}

        {!error && adaptations && adaptations.length === 0 && (
          <p className="text-zinc-600 dark:text-zinc-400">
            No adaptations match your search.
          </p>
        )}

        {!error && adaptations && adaptations.length > 0 && (
          <ul className="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {adaptations.map((adaptation: Adaptation) => (
              <li key={adaptation.id}>
                <Link
                  href={`/adaptations/${adaptation.id}`}
                  className="block rounded-xl border border-zinc-200 bg-white p-5 shadow-sm transition-colors hover:border-zinc-400 dark:border-zinc-800 dark:bg-zinc-900 dark:hover:border-zinc-600"
                >
                <h2 className="text-lg font-semibold text-zinc-900 dark:text-zinc-50">
                  {adaptation.title}
                </h2>
                <p className="mt-0.5 text-sm text-zinc-500 dark:text-zinc-400">
                  {adaptation.author}
                  {adaptation.book_publish_year
                    ? ` (${adaptation.book_publish_year})`
                    : ""}
                </p>

                <div className="mt-3 text-sm text-zinc-700 dark:text-zinc-300">
                  <p>
                    <span className="text-zinc-400 dark:text-zinc-500">
                      Movie:{" "}
                    </span>
                    {adaptation.movie_title}
                    {adaptation.movie_release_year
                      ? ` (${adaptation.movie_release_year})`
                      : ""}
                  </p>
                  {adaptation.director && (
                    <p>
                      <span className="text-zinc-400 dark:text-zinc-500">
                        Director:{" "}
                      </span>
                      {adaptation.director}
                    </p>
                  )}
                </div>

                {adaptation.genres.length > 0 && (
                  <div className="mt-3 flex flex-wrap gap-1.5">
                    {adaptation.genres.map((g) => (
                      <span
                        key={g}
                        className="rounded-full bg-zinc-100 px-2.5 py-0.5 text-xs font-medium text-zinc-700 dark:bg-zinc-800 dark:text-zinc-300"
                      >
                        {g}
                      </span>
                    ))}
                  </div>
                )}

                <p className="mt-4 text-xs font-medium text-zinc-500 dark:text-zinc-400">
                  {differenceCounts.get(adaptation.id) ?? 0} difference
                  {differenceCounts.get(adaptation.id) === 1 ? "" : "s"} logged
                </p>
                </Link>
              </li>
            ))}
          </ul>
        )}
      </div>
    </div>
  );
}
