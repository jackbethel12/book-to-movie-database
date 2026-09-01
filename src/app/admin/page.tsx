import { redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import type { DifferenceEntry } from "@/lib/types";
import { approveEntry, rejectEntry } from "./actions";

type PendingEntry = DifferenceEntry & {
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
    .returns<PendingEntry[]>();

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
                <div className="flex flex-wrap items-center gap-2 text-xs font-medium text-zinc-500 dark:text-zinc-400">
                  <span className="rounded-full bg-zinc-100 px-2 py-0.5 dark:bg-zinc-800">
                    {entry.category}
                  </span>
                  {entry.spoiler_flag && (
                    <span className="rounded-full bg-amber-100 px-2 py-0.5 text-amber-800 dark:bg-amber-950 dark:text-amber-300">
                      Spoiler
                    </span>
                  )}
                  <span>
                    {entry.adaptations?.title ?? "Unknown adaptation"}
                  </span>
                </div>

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
      </div>
    </div>
  );
}
