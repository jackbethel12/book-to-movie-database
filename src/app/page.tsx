import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import type { Adaptation } from "@/lib/types";
import { sortableTitle } from "@/lib/sort-title";
import { AdaptationFilters } from "@/components/adaptation-filters";

// This is the homepage: a searchable, filterable list of every adaptation
// in the database. It's a Server Component, meaning the search happens on
// the server before the page is sent to the browser — no extra JavaScript
// needed for basic search/filter, just a plain HTML form.
export default async function Home({
  searchParams,
}: PageProps<"/">) {
  const params = await searchParams;
  const q = typeof params.q === "string" ? params.q.trim() : "";
  const selectedGenres = Array.isArray(params.genre)
    ? params.genre
    : typeof params.genre === "string" && params.genre
      ? [params.genre]
      : [];
  // A decade is a single value, not a multi-select like genre — "1990" and
  // "2000" aren't meant to be combined the way two genres are.
  const decadeParam = typeof params.decade === "string" ? params.decade : "";
  const selectedDecade = /^\d{4}$/.test(decadeParam) ? Number(decadeParam) : null;

  const supabase = await createClient();

  // Build the main query. Start with everything, then narrow it down based
  // on whatever the visitor typed into the search box, picked from the
  // genre pills, or picked from the decade pills.
  let query = supabase.from("adaptations").select("*");

  if (q) {
    const pattern = `%${q}%`;
    query = query.or(
      `title.ilike.${pattern},author.ilike.${pattern},movie_title.ilike.${pattern},director.ilike.${pattern}`
    );
  }

  if (selectedGenres.length > 0) {
    // Matches an adaptation tagged with ANY of the selected genres.
    query = query.overlaps("genres", selectedGenres);
  }

  if (selectedDecade !== null) {
    query = query
      .gte("movie_release_year", selectedDecade)
      .lt("movie_release_year", selectedDecade + 10);
  }

  const { data: adaptations, error } = await query;
  adaptations?.sort((a, b) =>
    sortableTitle(a.title).localeCompare(sortableTitle(b.title))
  );

  // Separately, grab every genre and movie year that exists in the database
  // (unfiltered) so the pills always show all the options, not just the
  // ones that match the current search.
  const { data: genreRows } = await supabase
    .from("adaptations")
    .select("genres, movie_release_year");
  const allGenres = Array.from(
    new Set((genreRows ?? []).flatMap((row) => row.genres ?? []))
  ).sort();
  const allDecades = Array.from(
    new Set(
      (genreRows ?? [])
        .map((row) => row.movie_release_year)
        .filter((year): year is number => typeof year === "number")
        .map((year) => Math.floor(year / 10) * 10)
    )
  ).sort((a, b) => a - b);

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
  const totalDifferences = entryRows?.length ?? 0;

  const isFiltered =
    q.length > 0 || selectedGenres.length > 0 || selectedDecade !== null;

  return (
    <div className="mx-auto max-w-6xl px-6 py-14">
      <header className="relative mb-12 text-center">
        <div
          className="pointer-events-none absolute top-[-4rem] left-1/2 -z-10 h-56 w-[36rem] -translate-x-1/2 rounded-full bg-accent/10 blur-3xl"
          aria-hidden
        />
        <span className="text-xs font-semibold tracking-[0.2em] text-accent uppercase">
          Book vs. Movie
        </span>
        <h1 className="mt-3 font-serif text-4xl font-semibold tracking-tight text-stone-900 sm:text-5xl dark:text-stone-50">
          What did the movie change?
        </h1>
        <p className="mx-auto mt-3 max-w-xl text-stone-600 dark:text-stone-400">
          A crowdsourced reference tracking every plot change, cut character,
          and altered ending between books and their film adaptations.
        </p>
        {!isFiltered && (
          <div className="mt-5 flex items-center justify-center gap-3 text-sm font-medium text-stone-500 dark:text-stone-400">
            <span>
              {adaptations?.length ?? 0} adaptation
              {adaptations?.length === 1 ? "" : "s"}
            </span>
            <span className="h-1 w-1 rounded-full bg-stone-300 dark:bg-stone-700" />
            <span>
              {totalDifferences} difference{totalDifferences === 1 ? "" : "s"}{" "}
              logged
            </span>
          </div>
        )}
        <div className="mt-6 flex flex-wrap items-center justify-center gap-3">
          <Link
            href="/submit"
            className="inline-block rounded-full bg-accent px-5 py-2.5 text-sm font-medium text-white shadow-sm transition-transform hover:-translate-y-0.5 hover:bg-accent-hover"
          >
            + Submit a difference
          </Link>
          <Link
            href="/request"
            className="inline-block rounded-full bg-accent px-5 py-2.5 text-sm font-medium text-white shadow-sm transition-transform hover:-translate-y-0.5 hover:bg-accent-hover"
          >
            Don&apos;t see a movie? Request it here!
          </Link>
        </div>
      </header>

      <AdaptationFilters
        allGenres={allGenres}
        selectedGenres={selectedGenres}
        allDecades={allDecades}
        selectedDecade={selectedDecade}
        q={q}
      >
        {error && (
          <p className="rounded-lg border border-red-300 bg-red-50 px-4 py-3 text-red-800 dark:border-red-900 dark:bg-red-950 dark:text-red-200">
            Something went wrong loading adaptations: {error.message}
          </p>
        )}

        {!error && adaptations && adaptations.length === 0 && (
          <p className="text-stone-600 dark:text-stone-400">
            No adaptations match your search.
          </p>
        )}

        {!error && adaptations && adaptations.length > 0 && (
          <ul className="grid grid-cols-2 gap-5 sm:grid-cols-3 lg:grid-cols-4">
            {adaptations.map((adaptation: Adaptation, i: number) => {
              const count = differenceCounts.get(adaptation.id) ?? 0;
              return (
                <li
                  key={adaptation.id}
                  className="animate-fade-up"
                  style={{ animationDelay: `${Math.min(i, 10) * 45}ms` }}
                >
                  <Link
                    href={`/adaptations/${adaptation.id}`}
                    className="group block overflow-hidden rounded-2xl border border-stone-900/10 bg-elevated shadow-sm transition-all hover:-translate-y-1 hover:border-accent/30 hover:shadow-xl dark:border-stone-100/10 dark:bg-stone-900"
                  >
                    <div className="relative aspect-[2/3] w-full overflow-hidden bg-gradient-to-br from-stone-200 to-stone-300 dark:from-stone-800 dark:to-stone-700">
                      {adaptation.movie_poster_url ||
                      adaptation.book_cover_url ? (
                        // eslint-disable-next-line @next/next/no-img-element -- covers/posters are pasted from arbitrary external sites, so next/image's fixed domain allowlist doesn't fit here.
                        <img
                          src={
                            adaptation.movie_poster_url ??
                            adaptation.book_cover_url ??
                            undefined
                          }
                          alt=""
                          className="h-full w-full object-cover transition-transform duration-500 group-hover:scale-105"
                        />
                      ) : (
                        <div className="flex h-full w-full items-center justify-center">
                          <span className="text-3xl opacity-50" aria-hidden>
                            🎬
                          </span>
                        </div>
                      )}

                      <div className="pointer-events-none absolute inset-0 bg-gradient-to-t from-black/70 via-black/0 to-black/0 opacity-0 transition-opacity duration-300 group-hover:opacity-100" />

                      {count > 0 && (
                        <span className="absolute top-2 right-2 rounded-full bg-black/60 px-2 py-0.5 text-xs font-semibold text-white backdrop-blur-sm">
                          {count}
                        </span>
                      )}

                      <span className="pointer-events-none absolute inset-x-0 bottom-0 translate-y-2 p-3 text-xs font-medium text-white opacity-0 transition-all duration-300 group-hover:translate-y-0 group-hover:opacity-100">
                        {adaptation.director
                          ? `dir. ${adaptation.director}`
                          : "View differences →"}
                      </span>
                    </div>

                    <div className="p-3.5">
                      <h2 className="font-serif text-base leading-snug font-semibold text-stone-900 transition-colors group-hover:text-accent dark:text-stone-50">
                        {adaptation.title}
                      </h2>
                      <p className="mt-0.5 truncate text-xs text-stone-500 dark:text-stone-400">
                        {adaptation.author}
                        {adaptation.book_publish_year
                          ? ` · ${adaptation.book_publish_year}`
                          : ""}
                      </p>
                    </div>
                  </Link>
                </li>
              );
            })}
          </ul>
        )}
      </AdaptationFilters>
    </div>
  );
}
