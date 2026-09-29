import type { Metadata } from "next";
import { redirect, notFound } from "next/navigation";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import type { DifferenceEntry } from "@/lib/types";
import { EditEntryForm } from "./edit-entry-form";

export const metadata: Metadata = {
  title: "Edit entry",
};

type EntryWithAdaptation = DifferenceEntry & {
  adaptations: { title: string; movie_title: string | null } | null;
};

export default async function EditEntryPage({
  params,
}: PageProps<"/admin/entries/[id]/edit">) {
  const { id } = await params;
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

  const { data: entry } = await supabase
    .from("difference_entries")
    .select("*, adaptations(title, movie_title)")
    .eq("id", id)
    .single<EntryWithAdaptation>();

  if (!entry) {
    notFound();
  }

  return (
    <div className="relative mx-auto max-w-2xl px-6 py-14">
      <div
        className="pointer-events-none absolute top-8 right-[-6rem] -z-10 h-64 w-64 rounded-full bg-accent/10 blur-3xl"
        aria-hidden
      />

      <Link
        href="/admin"
        className="animate-fade-up text-sm font-medium text-stone-500 hover:text-stone-800 dark:text-stone-400 dark:hover:text-stone-200"
      >
        ← Back to moderation queue
      </Link>

      <header className="animate-fade-up mt-4 mb-8" style={{ animationDelay: "60ms" }}>
        <span className="text-xs font-semibold tracking-[0.2em] text-accent uppercase">
          Admin
        </span>
        <h1 className="mt-3 font-serif text-3xl font-semibold tracking-tight text-stone-900 dark:text-stone-50">
          Edit entry
        </h1>
        <p className="mt-2 text-stone-600 dark:text-stone-400">
          {entry.adaptations?.title ?? "Unknown adaptation"}
          {entry.status === "approved" ? " · already live on the site" : ""}
        </p>
      </header>

      <div
        className="animate-fade-up rounded-2xl border border-stone-900/10 bg-elevated p-6 shadow-sm sm:p-8 dark:border-stone-100/10 dark:bg-stone-900"
        style={{ animationDelay: "120ms" }}
      >
        <EditEntryForm entry={entry} />
      </div>
    </div>
  );
}
