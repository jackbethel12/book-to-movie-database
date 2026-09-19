"use client";

import { useActionState } from "react";
import { createAdaptation, type CreateAdaptationState } from "./actions";

const initialState: CreateAdaptationState = { error: null };

const inputClasses =
  "mt-1 w-full rounded-lg border border-zinc-300 bg-white px-3 py-2 text-zinc-900 shadow-sm focus:border-zinc-500 focus:outline-none dark:border-zinc-700 dark:bg-zinc-900 dark:text-zinc-50";

const labelClasses =
  "block text-sm font-medium text-zinc-700 dark:text-zinc-300";

export function NewAdaptationForm() {
  const [state, formAction, pending] = useActionState(
    createAdaptation,
    initialState
  );

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
            Author
          </label>
          <input id="author" name="author" type="text" className={inputClasses} />
        </div>
      </div>

      <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
        <div>
          <label htmlFor="movie_title" className={labelClasses}>
            Movie title
          </label>
          <input
            id="movie_title"
            name="movie_title"
            type="text"
            required
            className={inputClasses}
          />
        </div>
        <div>
          <label htmlFor="director" className={labelClasses}>
            Director
          </label>
          <input
            id="director"
            name="director"
            type="text"
            className={inputClasses}
          />
        </div>
      </div>

      <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
        <div>
          <label htmlFor="book_publish_year" className={labelClasses}>
            Book publish year
          </label>
          <input
            id="book_publish_year"
            name="book_publish_year"
            type="number"
            inputMode="numeric"
            className={inputClasses}
          />
        </div>
        <div>
          <label htmlFor="movie_release_year" className={labelClasses}>
            Movie release year
          </label>
          <input
            id="movie_release_year"
            name="movie_release_year"
            type="number"
            inputMode="numeric"
            className={inputClasses}
          />
        </div>
      </div>

      <div>
        <label htmlFor="genres" className={labelClasses}>
          Genres <span className="text-zinc-400">(comma-separated)</span>
        </label>
        <input
          id="genres"
          name="genres"
          type="text"
          placeholder="Fantasy, Adventure"
          className={inputClasses}
        />
      </div>

      <div>
        <label htmlFor="synopsis" className={labelClasses}>
          Synopsis <span className="text-zinc-400">(optional)</span>
        </label>
        <textarea
          id="synopsis"
          name="synopsis"
          rows={4}
          placeholder="A short, spoiler-free premise shown at the top of the page."
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
        className="w-full rounded-lg bg-zinc-900 px-5 py-2.5 font-medium text-white transition-colors hover:bg-zinc-700 disabled:opacity-50 dark:bg-zinc-50 dark:text-zinc-900 dark:hover:bg-zinc-300"
      >
        {pending ? "Saving…" : "Add adaptation"}
      </button>
    </form>
  );
}
