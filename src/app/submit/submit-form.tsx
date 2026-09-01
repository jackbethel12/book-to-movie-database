"use client";

import { useActionState } from "react";
import { DIFFERENCE_CATEGORIES } from "@/lib/types";
import { submitDifference, type SubmitState } from "./actions";

type AdaptationOption = {
  id: string;
  title: string;
  movie_title: string | null;
};

const initialState: SubmitState = { error: null };

const inputClasses =
  "mt-1 w-full rounded-lg border border-zinc-300 bg-white px-3 py-2 text-zinc-900 shadow-sm focus:border-zinc-500 focus:outline-none dark:border-zinc-700 dark:bg-zinc-900 dark:text-zinc-50";

export function SubmitForm({
  adaptations,
  defaultAdaptationId,
}: {
  adaptations: AdaptationOption[];
  defaultAdaptationId?: string;
}) {
  const [state, formAction, pending] = useActionState(
    submitDifference,
    initialState
  );

  return (
    <form action={formAction} className="space-y-5">
      <div>
        <label
          htmlFor="adaptation_id"
          className="block text-sm font-medium text-zinc-700 dark:text-zinc-300"
        >
          Which adaptation is this about?
        </label>
        <select
          id="adaptation_id"
          name="adaptation_id"
          required
          defaultValue={defaultAdaptationId ?? ""}
          className={inputClasses}
        >
          <option value="" disabled>
            Select an adaptation…
          </option>
          {adaptations.map((a) => (
            <option key={a.id} value={a.id}>
              {a.title}
              {a.movie_title && a.movie_title !== a.title
                ? ` (${a.movie_title})`
                : ""}
            </option>
          ))}
        </select>
        <p className="mt-1 text-xs text-zinc-500 dark:text-zinc-400">
          Don&apos;t see it listed? Requesting a brand-new adaptation is
          coming in a future update — for now, let the site owner know
          directly.
        </p>
      </div>

      <div>
        <label
          htmlFor="category"
          className="block text-sm font-medium text-zinc-700 dark:text-zinc-300"
        >
          Category
        </label>
        <select
          id="category"
          name="category"
          required
          defaultValue=""
          className={inputClasses}
        >
          <option value="" disabled>
            Select a category…
          </option>
          {DIFFERENCE_CATEGORIES.map((c) => (
            <option key={c} value={c}>
              {c}
            </option>
          ))}
        </select>
      </div>

      <div>
        <label
          htmlFor="summary"
          className="block text-sm font-medium text-zinc-700 dark:text-zinc-300"
        >
          Summary <span className="text-zinc-400">(1-2 sentences)</span>
        </label>
        <input
          id="summary"
          name="summary"
          type="text"
          required
          maxLength={300}
          placeholder="e.g. The book's ending is completely different from the movie's."
          className={inputClasses}
        />
      </div>

      <div>
        <label
          htmlFor="detail"
          className="block text-sm font-medium text-zinc-700 dark:text-zinc-300"
        >
          More detail <span className="text-zinc-400">(optional)</span>
        </label>
        <textarea
          id="detail"
          name="detail"
          rows={8}
          placeholder="Write as much as you'd like — a full write-up is welcome. Leave a blank line between paragraphs and they'll display as separate paragraphs."
          className={inputClasses}
        />
      </div>

      <label className="flex items-center gap-2 text-sm text-zinc-700 dark:text-zinc-300">
        <input
          type="checkbox"
          name="spoiler_flag"
          className="h-4 w-4 rounded border-zinc-300"
        />
        This reveals a spoiler
      </label>

      {state.error && (
        <p className="rounded-lg border border-red-300 bg-red-50 px-4 py-3 text-sm text-red-800 dark:border-red-900 dark:bg-red-950 dark:text-red-200">
          {state.error}
        </p>
      )}

      <button
        type="submit"
        disabled={pending}
        className="w-full rounded-lg bg-zinc-900 px-5 py-2.5 font-medium text-white transition-colors hover:bg-zinc-700 disabled:opacity-50 dark:bg-zinc-50 dark:text-zinc-900 dark:hover:bg-zinc-300"
      >
        {pending ? "Submitting…" : "Submit for review"}
      </button>

      <p className="text-xs text-zinc-500 dark:text-zinc-400">
        Submissions aren&apos;t shown publicly right away — they go into a
        review queue first.
      </p>
    </form>
  );
}
