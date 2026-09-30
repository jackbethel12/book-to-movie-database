"use client";

import { useActionState } from "react";
import { submitAdaptationRequest, type RequestState } from "./actions";

const initialState: RequestState = { error: null, sent: false };

const inputClasses =
  "mt-1 w-full rounded-lg border border-stone-300 bg-stone-50 px-3 py-2 text-stone-900 shadow-sm focus:border-accent focus:ring-2 focus:ring-accent/20 focus:outline-none dark:border-stone-700 dark:bg-stone-950 dark:text-stone-50";

const labelClasses = "block text-sm font-medium text-stone-700 dark:text-stone-300";

export function RequestForm() {
  const [state, formAction, pending] = useActionState(
    submitAdaptationRequest,
    initialState
  );

  if (state.sent) {
    return (
      <p className="rounded-lg border border-emerald-300 bg-emerald-50 px-4 py-3 text-sm text-emerald-800 dark:border-emerald-900 dark:bg-emerald-950 dark:text-emerald-200">
        Thanks! Your request was sent — if it gets added, keep an eye out on
        the homepage.
      </p>
    );
  }

  return (
    <form action={formAction} className="space-y-5">
      <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
        <div>
          <label htmlFor="title" className={labelClasses}>
            Book title
          </label>
          <input
            id="title"
            name="title"
            type="text"
            required
            className={inputClasses}
          />
        </div>
        <div>
          <label htmlFor="author" className={labelClasses}>
            Author <span className="text-stone-400">(optional)</span>
          </label>
          <input id="author" name="author" type="text" className={inputClasses} />
        </div>
      </div>

      <div className="grid grid-cols-1 gap-4 sm:grid-cols-[2fr_1fr]">
        <div>
          <label htmlFor="movie_title" className={labelClasses}>
            Movie title{" "}
            <span className="text-stone-400">(if different from the book)</span>
          </label>
          <input
            id="movie_title"
            name="movie_title"
            type="text"
            required
            placeholder="Usually the same as the book title"
            className={inputClasses}
          />
        </div>
        <div>
          <label htmlFor="movie_release_year" className={labelClasses}>
            Movie year
          </label>
          <input
            id="movie_release_year"
            name="movie_release_year"
            type="number"
            inputMode="numeric"
            required
            className={inputClasses}
          />
        </div>
      </div>

      <div>
        <label htmlFor="notes" className={labelClasses}>
          What&apos;s different between the book and movie?{" "}
          <span className="text-stone-400">(optional)</span>
        </label>
        <textarea
          id="notes"
          name="notes"
          rows={5}
          placeholder="A quick summary is helpful but not required — we can dig in once it's added."
          className={inputClasses}
        />
      </div>

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
        {pending ? "Sending…" : "Send request"}
      </button>

      <p className="text-xs text-stone-500 dark:text-stone-400">
        Requests go to the site owner for review — not everything gets
        added, but it all gets read.
      </p>
    </form>
  );
}
