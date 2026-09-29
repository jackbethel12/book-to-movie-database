"use client";

import { useActionState } from "react";
import { DIFFERENCE_CATEGORIES, type DifferenceEntry } from "@/lib/types";
import { updateEntry, type UpdateEntryState } from "./actions";

const initialState: UpdateEntryState = { error: null };

const inputClasses =
  "mt-1 w-full rounded-lg border border-stone-300 bg-stone-50 px-3 py-2 text-stone-900 shadow-sm focus:border-accent focus:ring-2 focus:ring-accent/20 focus:outline-none dark:border-stone-700 dark:bg-stone-950 dark:text-stone-50";

const selectClasses = `${inputClasses} appearance-none bg-[url("data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20width='16'%20height='16'%20viewBox='0%200%2024%2024'%20fill='none'%20stroke='%2378716c'%20stroke-width='2'%3E%3Cpath%20d='m6%209%206%206%206-6'/%3E%3C/svg%3E")] bg-[right_0.75rem_center] bg-no-repeat pr-9`;

const labelClasses = "block text-sm font-medium text-stone-700 dark:text-stone-300";

export function EditEntryForm({ entry }: { entry: DifferenceEntry }) {
  const [state, formAction, pending] = useActionState(
    updateEntry.bind(null, entry.id),
    initialState
  );

  return (
    <form action={formAction} className="space-y-5">
      <div>
        <label htmlFor="category" className={labelClasses}>
          Category
        </label>
        <select
          id="category"
          name="category"
          required
          defaultValue={entry.category}
          className={selectClasses}
        >
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
          defaultValue={entry.summary}
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
          defaultValue={entry.detail ?? ""}
          className={inputClasses}
        />
      </div>

      <label className="flex cursor-pointer items-center gap-3 text-sm text-stone-700 select-none dark:text-stone-300">
        <span className="relative inline-flex h-5 w-9 shrink-0 items-center">
          <input
            type="checkbox"
            name="spoiler_flag"
            defaultChecked={entry.spoiler_flag}
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
        {pending ? "Saving…" : "Save changes"}
      </button>
    </form>
  );
}
