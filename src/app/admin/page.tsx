import type { Metadata } from "next";
import { redirect } from "next/navigation";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import type { DifferenceEntry } from "@/lib/types";
import { approveEntry, rejectEntry, deleteEntry } from "./actions";
import { ConfirmDeleteButton } from "./confirm-delete-button";

export const metadata: Metadata = {
  title: "Moderation queue",
};

type EntryWithAdaptation = DifferenceEntry & {
  adaptations: { title: string; movie_title: string | null } | null;
};

export default async function AdminPage() {
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

  // Not just hidden from non-admins — actually blocked. Someone who isn't
  // an admin gets sent home even if they type this page's address directly.
  if (!profile?.is_admin) {
    redirect("/");
  }

  const { data: pending } = await supabase
    .from("difference_entries")
    .select("*, adaptations(title, movie_title)")
    .eq("status", "pending")
    .order("created_at", { ascending: true })
    .returns<EntryWithAdaptation[]>();

  const { data: approved } = await supabase
    .from("difference_entries")
    .select("*, adaptations(title, movie_title)")
    .eq("status", "approved")
    .order("created_at", { ascending: false })
    .returns<EntryWithAdaptation[]>();

  return (
    <div className="mx-auto max-w-3xl px-6 py-12">
      <div className="flex flex-wrap items-start justify-between gap-4">
        <div>
          <h1 className="font-serif text-3xl font-semibold tracking-tight text-stone-900 dark:text-stone-50">
            Moderation queue
          </h1>
          <p className="mt-1.5 text-stone-600 dark:text-stone-400">
            Review submissions before they go live.
          </p>
        </div>
        <Link
          href="/admin/adaptations/new"
          className="shrink-0 rounded-full bg-accent px-4 py-2 text-sm font-medium text-white shadow-sm transition-colors hover:bg-accent-hover"
        >
          + Add adaptation
        </Link>
      </div>

      <section className="mt-8 rounded-2xl border border-stone-900/10 bg-elevated shadow-sm dark:border-stone-100/10 dark:bg-stone-900">
        <div className="flex items-center justify-between gap-3 border-b border-stone-900/10 px-6 py-4 dark:border-stone-100/10">
          <h2 className="font-serif text-lg font-semibold text-stone-900 dark:text-stone-50">
            Needs review
          </h2>
          {pending && pending.length > 0 && (
            <span className="rounded-full bg-accent/10 px-2.5 py-0.5 text-xs font-semibold text-accent">
              {pending.length}
            </span>
          )}
        </div>

        {!pending || pending.length === 0 ? (
          <p className="px-6 py-8 text-sm text-stone-500 dark:text-stone-400">
            Nothing to review right now.
          </p>
        ) : (
          <ul className="divide-y divide-stone-900/10 dark:divide-stone-100/10">
            {pending.map((entry) => (
              <li key={entry.id} className="px-6 py-5">
                <EntryMeta entry={entry} />
                <p className="mt-2 font-medium text-stone-900 dark:text-stone-50">
                  {entry.summary}
                </p>
                {entry.detail && (
                  <p className="mt-1.5 line-clamp-4 whitespace-pre-line text-sm text-stone-600 dark:text-stone-400">
                    {entry.detail}
                  </p>
                )}

                <div className="mt-4 flex gap-2.5">
                  <form action={approveEntry.bind(null, entry.id)}>
                    <button
                      type="submit"
                      className="rounded-full bg-emerald-600 px-4 py-1.5 text-sm font-medium text-white transition-colors hover:bg-emerald-700"
                    >
                      Approve
                    </button>
                  </form>
                  <form action={rejectEntry.bind(null, entry.id)}>
                    <button
                      type="submit"
                      className="rounded-full border border-stone-300 px-4 py-1.5 text-sm font-medium text-stone-600 transition-colors hover:border-red-300 hover:bg-red-50 hover:text-red-700 dark:border-stone-700 dark:text-stone-300 dark:hover:border-red-900 dark:hover:bg-red-950 dark:hover:text-red-400"
                    >
                      Reject
                    </button>
                  </form>
                </div>
              </li>
            ))}
          </ul>
        )}
      </section>

      <section className="mt-8 rounded-2xl border border-stone-900/10 bg-elevated shadow-sm dark:border-stone-100/10 dark:bg-stone-900">
        <div className="border-b border-stone-900/10 px-6 py-4 dark:border-stone-100/10">
          <h2 className="font-serif text-lg font-semibold text-stone-900 dark:text-stone-50">
            Live on the site
          </h2>
          <p className="mt-0.5 text-sm text-stone-500 dark:text-stone-400">
            Already approved and publicly visible. Delete removes one
            permanently.
          </p>
        </div>

        {!approved || approved.length === 0 ? (
          <p className="px-6 py-8 text-sm text-stone-500 dark:text-stone-400">
            Nothing approved yet.
          </p>
        ) : (
          <ul className="divide-y divide-stone-900/10 dark:divide-stone-100/10">
            {approved.map((entry) => (
              <li
                key={entry.id}
                className="flex items-start justify-between gap-4 px-6 py-3.5"
              >
                <div className="min-w-0">
                  <EntryMeta entry={entry} />
                  <p className="mt-1 truncate text-sm text-stone-700 dark:text-stone-300">
                    {entry.summary}
                  </p>
                </div>
                <form action={deleteEntry.bind(null, entry.id)}>
                  <ConfirmDeleteButton
                    confirmMessage={`Delete this entry?\n\n"${entry.summary}"\n\nThis can't be undone.`}
                    className="shrink-0 rounded-full px-3 py-1 text-sm font-medium text-stone-400 transition-colors hover:bg-red-50 hover:text-red-700 dark:text-stone-500 dark:hover:bg-red-950 dark:hover:text-red-400"
                  >
                    Delete
                  </ConfirmDeleteButton>
                </form>
              </li>
            ))}
          </ul>
        )}
      </section>
    </div>
  );
}

function EntryMeta({ entry }: { entry: EntryWithAdaptation }) {
  return (
    <div className="flex flex-wrap items-center gap-2 text-xs font-medium text-stone-500 dark:text-stone-400">
      <span className="truncate text-stone-700 dark:text-stone-300">
        {entry.adaptations?.title ?? "Unknown adaptation"}
      </span>
      <span className="text-stone-300 dark:text-stone-700">·</span>
      <span className="rounded-full bg-stone-100 px-2 py-0.5 dark:bg-stone-800">
        {entry.category}
      </span>
      {entry.spoiler_flag && (
        <span className="rounded-full bg-amber-100 px-2 py-0.5 text-amber-800 dark:bg-amber-950 dark:text-amber-300">
          Spoiler
        </span>
      )}
    </div>
  );
}
