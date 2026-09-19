import { redirect } from "next/navigation";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { NewAdaptationForm } from "./new-adaptation-form";

export default async function NewAdaptationPage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    redirect("/login");
  }

  const { data: profile } = await supabase
    .from("profiles")
    .select("is_admin")
    .eq("id", user.id)
    .single();

  if (!profile?.is_admin) {
    redirect("/");
  }

  return (
    <div className="min-h-full bg-stone-100 dark:bg-stone-950">
      <div className="mx-auto max-w-xl px-6 py-12">
        <Link
          href="/admin"
          className="text-sm font-medium text-stone-500 hover:text-stone-800 dark:text-stone-400 dark:hover:text-stone-200"
        >
          ← Back to moderation queue
        </Link>

        <header className="mt-4 mb-8">
          <h1 className="text-3xl font-bold tracking-tight text-stone-900 dark:text-stone-50">
            Add an adaptation
          </h1>
          <p className="mt-2 text-stone-600 dark:text-stone-400">
            Adds a new book/movie pair directly — it goes live immediately,
            with no moderation step.
          </p>
        </header>

        <NewAdaptationForm />
      </div>
    </div>
  );
}
