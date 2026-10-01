import type { Metadata } from "next";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { DIFFERENCE_CATEGORIES } from "@/lib/types";
import { sortableTitle } from "@/lib/sort-title";
import { SubmitForm } from "./submit-form";

export const metadata: Metadata = {
  title: "Submit a difference",
};

export default async function SubmitPage({
  searchParams,
}: PageProps<"/submit">) {
  const params = await searchParams;
  const defaultAdaptationId =
    typeof params.adaptation === "string" ? params.adaptation : undefined;

  const supabase = await createClient();
  const { data: adaptations } = await supabase
    .from("adaptations")
    .select("id, title, movie_title");
  adaptations?.sort((a, b) =>
    sortableTitle(a.title).localeCompare(sortableTitle(b.title))
  );

  return (
    <div className="relative mx-auto max-w-4xl px-6 py-14">
      <div
        className="pointer-events-none absolute top-8 right-[-6rem] -z-10 h-64 w-64 rounded-full bg-accent/10 blur-3xl"
        aria-hidden
      />

      <Link
        href="/"
        className="animate-fade-up text-sm font-medium text-stone-500 hover:text-stone-800 dark:text-stone-400 dark:hover:text-stone-200"
      >
        ← Back to all adaptations
      </Link>

      <div className="mt-6 grid gap-10 lg:grid-cols-[minmax(0,1fr)_minmax(0,1.3fr)] lg:items-start">
        <div
          className="animate-fade-up lg:sticky lg:top-24"
          style={{ animationDelay: "60ms" }}
        >
          <span className="text-xs font-semibold tracking-[0.2em] text-accent uppercase">
            Contribute
          </span>
          <h1 className="mt-3 font-serif text-3xl font-semibold tracking-tight text-stone-900 sm:text-4xl dark:text-stone-50">
            Submit a difference
          </h1>
          <p className="mt-3 text-stone-600 dark:text-stone-400">
            Found something the movie changed from the book? Log it here.
            Every submission is reviewed before it appears publicly.
          </p>

          <ul className="mt-8 space-y-2.5 text-sm text-stone-600 dark:text-stone-400">
            {DIFFERENCE_CATEGORIES.map((category) => (
              <li key={category} className="flex items-center gap-2.5">
                <span
                  className="h-1.5 w-1.5 shrink-0 rounded-full bg-accent/60"
                  aria-hidden
                />
                {category}
              </li>
            ))}
          </ul>
        </div>

        <div
          className="animate-fade-up rounded-2xl border border-stone-900/10 bg-elevated p-6 shadow-sm sm:p-8 dark:border-stone-100/10 dark:bg-stone-900"
          style={{ animationDelay: "120ms" }}
        >
          <SubmitForm
            adaptations={adaptations ?? []}
            defaultAdaptationId={defaultAdaptationId}
          />
        </div>
      </div>
    </div>
  );
}
