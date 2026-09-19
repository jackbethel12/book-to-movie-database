import Link from "next/link";
import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import {
  DIFFERENCE_CATEGORIES,
  type Adaptation,
  type DifferenceCategory,
  type DifferenceEntry,
} from "@/lib/types";
import { DifferenceEntryCard } from "./difference-entry-card";

export default async function AdaptationDetailPage({
  params,
  searchParams,
}: PageProps<"/adaptations/[id]">) {
  const { id } = await params;
  const { submitted } = await searchParams;
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  let isAdmin = false;
  if (user) {
    const { data: profile } = await supabase
      .from("profiles")
      .select("is_admin")
      .eq("id", user.id)
      .single();
    isAdmin = profile?.is_admin ?? false;
  }

  const { data: adaptation } = await supabase
    .from("adaptations")
    .select("*")
    .eq("id", id)
    .single<Adaptation>();

  if (!adaptation) {
    notFound();
  }

  // Only show entries a moderator has approved — pending/rejected ones stay
  // invisible to regular visitors (moderation queue comes in a later step).
  const { data: entries } = await supabase
    .from("difference_entries")
    .select("*")
    .eq("adaptation_id", id)
    .eq("status", "approved")
    .order("created_at", { ascending: true })
    .returns<DifferenceEntry[]>();

  const grouped = new Map<DifferenceCategory, DifferenceEntry[]>();
  for (const entry of entries ?? []) {
    const list = grouped.get(entry.category) ?? [];
    list.push(entry);
    grouped.set(entry.category, list);
  }

  return (
    <div className="min-h-full bg-amber-50 dark:bg-stone-950">
      <div className="mx-auto max-w-3xl px-6 py-12">
        <Link
          href="/"
          className="text-sm font-medium text-stone-500 hover:text-stone-800 dark:text-stone-400 dark:hover:text-stone-200"
        >
          ← Back to all adaptations
        </Link>

        {submitted === "1" && (
          <p className="mt-4 rounded-lg border border-emerald-300 bg-emerald-50 px-4 py-3 text-sm text-emerald-800 dark:border-emerald-900 dark:bg-emerald-950 dark:text-emerald-200">
            Thanks! Your submission was received and is waiting for review
            before it appears publicly.
          </p>
        )}

        <header className="mt-4 mb-10 flex flex-col gap-6 sm:flex-row">
          {(adaptation.book_cover_url || adaptation.movie_poster_url) && (
            <div className="flex shrink-0 gap-3">
              {adaptation.book_cover_url && (
                // eslint-disable-next-line @next/next/no-img-element -- covers/posters are pasted from arbitrary external sites, so next/image's fixed domain allowlist doesn't fit here.
                <img
                  src={adaptation.book_cover_url}
                  alt={`${adaptation.title} book cover`}
                  className="h-44 w-auto rounded-lg object-cover shadow-md"
                />
              )}
              {adaptation.movie_poster_url && (
                // eslint-disable-next-line @next/next/no-img-element -- see above.
                <img
                  src={adaptation.movie_poster_url}
                  alt={`${adaptation.movie_title} movie poster`}
                  className="h-44 w-auto rounded-lg object-cover shadow-md"
                />
              )}
            </div>
          )}

          <div className="min-w-0 flex-1">
            <div className="flex flex-wrap items-start justify-between gap-2">
              <h1 className="text-3xl font-bold tracking-tight text-stone-900 dark:text-stone-50">
                {adaptation.title}
              </h1>
              {isAdmin && (
                <Link
                  href={`/admin/adaptations/${adaptation.id}/edit`}
                  className="text-sm font-medium text-amber-800 hover:text-amber-900 dark:text-amber-500 dark:hover:text-amber-400"
                >
                  Edit adaptation
                </Link>
              )}
            </div>
            <p className="mt-1 text-stone-600 dark:text-stone-400">
              {adaptation.author}
              {adaptation.book_publish_year
                ? ` · ${adaptation.book_publish_year}`
                : ""}
            </p>
            <p className="mt-3 text-stone-700 dark:text-stone-300">
              <span className="text-stone-400 dark:text-stone-500">
                Movie:{" "}
              </span>
              {adaptation.movie_title}
              {adaptation.movie_release_year
                ? ` (${adaptation.movie_release_year})`
                : ""}
              {adaptation.director ? ` · dir. ${adaptation.director}` : ""}
            </p>
            {adaptation.genres.length > 0 && (
              <div className="mt-3 flex flex-wrap gap-1.5">
                {adaptation.genres.map((g) => (
                  <span
                    key={g}
                    className="rounded-full bg-stone-100 px-2.5 py-0.5 text-xs font-medium text-stone-700 dark:bg-stone-800 dark:text-stone-300"
                  >
                    {g}
                  </span>
                ))}
              </div>
            )}

            {adaptation.synopsis && (
              <p className="mt-6 text-lg leading-relaxed text-stone-600 dark:text-stone-400">
                {adaptation.synopsis}
              </p>
            )}
          </div>
        </header>

        {grouped.size === 0 ? (
          <p className="text-stone-600 dark:text-stone-400">
            No differences have been logged for this adaptation yet.
          </p>
        ) : (
          <div className="space-y-10">
            {DIFFERENCE_CATEGORIES.filter((category) =>
              grouped.has(category)
            ).map((category) => (
              <section key={category}>
                <h2 className="mb-3 border-b border-amber-200 pb-2 text-xl font-semibold text-stone-900 dark:border-stone-800 dark:text-stone-50">
                  {category}
                </h2>
                <div className="space-y-4">
                  {grouped.get(category)!.map((entry) => (
                    <DifferenceEntryCard key={entry.id} entry={entry} />
                  ))}
                </div>
              </section>
            ))}
          </div>
        )}

        <Link
          href={`/submit?adaptation=${adaptation.id}`}
          className="mt-10 inline-block rounded-lg bg-amber-800 px-5 py-2.5 font-medium text-white transition-colors hover:bg-amber-900 dark:bg-amber-600 dark:hover:bg-amber-500"
        >
          + Submit a difference for this adaptation
        </Link>
      </div>
    </div>
  );
}
