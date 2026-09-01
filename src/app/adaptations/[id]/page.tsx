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
    <div className="min-h-full bg-zinc-50 dark:bg-black">
      <div className="mx-auto max-w-3xl px-6 py-12">
        <Link
          href="/"
          className="text-sm font-medium text-zinc-500 hover:text-zinc-800 dark:text-zinc-400 dark:hover:text-zinc-200"
        >
          ← Back to all adaptations
        </Link>

        {submitted === "1" && (
          <p className="mt-4 rounded-lg border border-emerald-300 bg-emerald-50 px-4 py-3 text-sm text-emerald-800 dark:border-emerald-900 dark:bg-emerald-950 dark:text-emerald-200">
            Thanks! Your submission was received and is waiting for review
            before it appears publicly.
          </p>
        )}

        <header className="mt-4 mb-10">
          <h1 className="text-3xl font-bold tracking-tight text-zinc-900 dark:text-zinc-50">
            {adaptation.title}
          </h1>
          <p className="mt-1 text-zinc-600 dark:text-zinc-400">
            {adaptation.author}
            {adaptation.book_publish_year
              ? ` · ${adaptation.book_publish_year}`
              : ""}
          </p>
          <p className="mt-3 text-zinc-700 dark:text-zinc-300">
            <span className="text-zinc-400 dark:text-zinc-500">Movie: </span>
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
                  className="rounded-full bg-zinc-100 px-2.5 py-0.5 text-xs font-medium text-zinc-700 dark:bg-zinc-800 dark:text-zinc-300"
                >
                  {g}
                </span>
              ))}
            </div>
          )}

          {adaptation.synopsis && (
            <p className="mt-6 text-lg leading-relaxed text-zinc-600 dark:text-zinc-400">
              {adaptation.synopsis}
            </p>
          )}
        </header>

        {grouped.size === 0 ? (
          <p className="text-zinc-600 dark:text-zinc-400">
            No differences have been logged for this adaptation yet.
          </p>
        ) : (
          <div className="space-y-10">
            {DIFFERENCE_CATEGORIES.filter((category) =>
              grouped.has(category)
            ).map((category) => (
              <section key={category}>
                <h2 className="mb-3 border-b border-zinc-200 pb-2 text-xl font-semibold text-zinc-900 dark:border-zinc-800 dark:text-zinc-50">
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
          className="mt-10 inline-block rounded-lg bg-zinc-900 px-5 py-2.5 font-medium text-white transition-colors hover:bg-zinc-700 dark:bg-zinc-50 dark:text-zinc-900 dark:hover:bg-zinc-300"
        >
          + Submit a difference for this adaptation
        </Link>
      </div>
    </div>
  );
}
