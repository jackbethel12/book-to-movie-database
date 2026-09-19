import { redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import type { DifferenceEntry } from "@/lib/types";
import { approveEntry, rejectEntry, deleteEntry } from "./actions";

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
    <div className="min-h-full bg-zinc-50 dark:bg-black">
      <div className="mx-auto max-w-3xl px-6 py-12">
        <h1 className="text-3xl font-bold tracking-tight text-zinc-900 dark:text-zinc-50">
          Moderation queue
        </h1>
        <p className="mt-2 text-zinc-600 dark:text-zinc-400">
          {pending?.length ?? 0} submission
          {pending?.length === 1 ? "" : "s"} waiting for review.
        </p>

        {!pending || pending.length === 0 ? (
          <p className="mt-8 text-zinc-600 dark:text-zinc-400">
            Nothing to review right now.
          </p>
        ) : (
          <div className="mt-8 space-y-6">
            {pending.map((entry) => (
              <div
                key={entry.id}
                className="rounded-lg border border-zinc-200 bg-white p-5 dark:border-zinc-800 dark:bg-zinc-900"
              >
                <EntryMeta entry={entry} />
                <p className="mt-2 font-medium text-zinc-900 dark:text-zinc-50">
                  {entry.summary}
                </p>
                {entry.detail && (
                  <p className="mt-1.5 whitespace-pre-line text-sm text-zinc-600 dark:text-zinc-400">
                    {entry.detail}
                  </p>
                )}

                <div className="mt-4 flex gap-3">
                  <form action={approveEntry.bind(null, entry.id)}>
                    <button
                      type="submit"
                      className="rounded-lg bg-emerald-600 px-4 py-1.5 text-sm font-medium text-white transition-colors hover:bg-emerald-700"
                    >
                      Approve
                    </button>
                  </form>
                  <form action={rejectEntry.bind(null, entry.id)}>
                    <button
                      type="submit"
                      className="rounded-lg bg-red-600 px-4 py-1.5 text-sm font-medium text-white transition-colors hover:bg-red-700"
                    >
                      Reject
                    </button>
                  </form>
                </div>
              </div>
            ))}
          </div>
        )}

        <h2 className="mt-14 text-xl font-semibold text-zinc-900 dark:text-zinc-50">
          Live on the site
        </h2>
        <p className="mt-1 text-sm text-zinc-500 dark:text-zinc-400">
          Already approved and publicly visible. Delete removes one
          permanently (for cleaning up test entries or mistakes).
        </p>

        {!approved || approved.length === 0 ? (
          <p className="mt-6 text-zinc-600 dark:text-zinc-400">
            Nothing approved yet.
          </p>
        ) : (
          <div className="mt-6 space-y-3">
            {approved.map((entry) => (
              <div
                key={entry.id}
                className="flex items-start justify-between gap-4 rounded-lg border border-zinc-200 bg-white p-4 dark:border-zinc-800 dark:bg-zinc-900"
              >
                <div className="min-w-0">
                  <EntryMeta entry={entry} />
                  <p className="mt-1.5 truncate text-sm text-zinc-700 dark:text-zinc-300">
                    {entry.summary}
                  </p>
                </div>
                <form action={deleteEntry.bind(null, entry.id)}>
                  <button
                    type="submit"
                    className="shrink-0 rounded-lg border border-red-300 px-3 py-1.5 text-sm font-medium text-red-700 transition-colors hover:bg-red-50 dark:border-red-900 dark:text-red-400 dark:hover:bg-red-950"
                  >
                    Delete
                  </button>
                </form>
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
}

function EntryMeta({ entry }: { entry: EntryWithAdaptation }) {
  return (
    <div className="flex flex-wrap items-center gap-2 text-xs font-medium text-zinc-500 dark:text-zinc-400">
      <span className="rounded-full bg-zinc-100 px-2 py-0.5 dark:bg-zinc-800">
        {entry.category}
      </span>
      {entry.spoiler_flag && (
        <span className="rounded-full bg-amber-100 px-2 py-0.5 text-amber-800 dark:bg-amber-950 dark:text-amber-300">
          Spoiler
        </span>
      )}
      <span>{entry.adaptations?.title ?? "Unknown adaptation"}</span>
    </div>
  );
}
