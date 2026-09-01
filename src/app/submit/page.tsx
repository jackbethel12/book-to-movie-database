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
    <div className="min-h-full bg-zinc-50 dark:bg-black">
      <div className="mx-auto max-w-xl px-6 py-12">
        <Link
          href="/"
          className="text-sm font-medium text-zinc-500 hover:text-zinc-800 dark:text-zinc-400 dark:hover:text-zinc-200"
        >
          ← Back to all adaptations
        </Link>

        <header className="mt-4 mb-8">
          <h1 className="text-3xl font-bold tracking-tight text-zinc-900 dark:text-zinc-50">
            Submit a difference
          </h1>
          <p className="mt-2 text-zinc-600 dark:text-zinc-400">
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
