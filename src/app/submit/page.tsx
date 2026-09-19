import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { SubmitForm } from "./submit-form";

export default async function SubmitPage({
  searchParams,
}: PageProps<"/submit">) {
  const params = await searchParams;
  const defaultAdaptationId =
    typeof params.adaptation === "string" ? params.adaptation : undefined;

  const supabase = await createClient();
  const { data: adaptations } = await supabase
    .from("adaptations")
    .select("id, title, movie_title")
    .order("title", { ascending: true });

  return (
    <div className="min-h-full bg-amber-50 dark:bg-stone-950">
      <div className="mx-auto max-w-xl px-6 py-12">
        <Link
          href="/"
          className="text-sm font-medium text-stone-500 hover:text-stone-800 dark:text-stone-400 dark:hover:text-stone-200"
        >
          ← Back to all adaptations
        </Link>

        <header className="mt-4 mb-8">
          <h1 className="text-3xl font-bold tracking-tight text-stone-900 dark:text-stone-50">
            Submit a difference
          </h1>
          <p className="mt-2 text-stone-600 dark:text-stone-400">
            Found something the movie changed from the book? Log it here.
            Every submission is reviewed before it appears publicly.
          </p>
        </header>

        <SubmitForm
          adaptations={adaptations ?? []}
          defaultAdaptationId={defaultAdaptationId}
        />
      </div>
    </div>
  );
}
