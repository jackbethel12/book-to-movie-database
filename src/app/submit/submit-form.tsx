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
  "mt-1 w-full rounded-lg border border-stone-300 bg-stone-50 px-3 py-2 text-stone-900 shadow-sm focus:border-accent focus:ring-2 focus:ring-accent/20 focus:outline-none dark:border-stone-700 dark:bg-stone-950 dark:text-stone-50";

const selectClasses = `${inputClasses} appearance-none bg-[url("data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20width='16'%20height='16'%20viewBox='0%200%2024%2024'%20fill='none'%20stroke='%2378716c'%20stroke-width='2'%3E%3Cpath%20d='m6%209%206%206%206-6'/%3E%3C/svg%3E")] bg-[right_0.75rem_center] bg-no-repeat pr-9`;

const labelClasses = "block text-sm font-medium text-stone-700 dark:text-stone-300";

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
        <label htmlFor="adaptation_id" className={labelClasses}>
          Which adaptation is this about?
        </label>
        <select
          id="adaptation_id"
          name="adaptation_id"
          required
          defaultValue={defaultAdaptationId ?? ""}
          className={selectClasses}
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
        <p className="mt-1 text-xs text-stone-500 dark:text-stone-400">
          Don&apos;t see it listed? Requesting a brand-new adaptation is
          coming in a future update — for now, let the site owner know
          directly.
        </p>
      </div>

      <div>
        <label htmlFor="category" className={labelClasses}>
          Category
        </label>
        <select
          id="category"
          name="category"
          required
          defaultValue=""
          className={selectClasses}
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
        <label htmlFor="summary" className={labelClasses}>
          Summary <span className="text-stone-400">(1-2 sentences)</span>
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
        <label htmlFor="detail" className={labelClasses}>
          More detail <span className="text-stone-400">(optional)</span>
        </label>
        <textarea
          id="detail"
          name="detail"
          rows={8}
          placeholder="Write as much as you'd like — a full write-up is welcome. Leave a blank line between paragraphs and they'll display as separate paragraphs."
          className={inputClasses}
        />
      </div>

      <label className="flex cursor-pointer items-center gap-3 text-sm text-stone-700 select-none dark:text-stone-300">
        <span className="relative inline-flex h-5 w-9 shrink-0 items-center">
          <input
            type="checkbox"
            name="spoiler_flag"
            className="peer sr-only"
          />
          <span className="absolute inset-0 rounded-full bg-stone-300 transition-colors peer-checked:bg-accent dark:bg-stone-700" />
          <span className="absolute left-0.5 h-4 w-4 rounded-full bg-white shadow-sm transition-transform peer-checked:translate-x-4" />
        </span>
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
        className="w-full rounded-lg bg-accent px-5 py-2.5 font-medium text-white transition-colors hover:bg-accent-hover disabled:opacity-50"
      >
        {pending ? "Submitting…" : "Submit for review"}
      </button>

      <p className="text-xs text-stone-500 dark:text-stone-400">
        Submissions aren&apos;t shown publicly right away — they go into a
        review queue first.
      </p>
    </form>
  );
}
