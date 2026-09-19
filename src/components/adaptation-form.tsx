"use client";

import { useActionState } from "react";

export type AdaptationFormState = { error: string | null };

type DefaultValues = {
  title?: string | null;
  author?: string | null;
  movie_title?: string | null;
  director?: string | null;
  book_publish_year?: number | null;
  movie_release_year?: number | null;
  genres?: string[];
  synopsis?: string | null;
  book_cover_url?: string | null;
  movie_poster_url?: string | null;
};

const inputClasses =
  "mt-1 w-full rounded-lg border border-amber-300 bg-white px-3 py-2 text-zinc-900 shadow-sm focus:border-indigo-500 focus:outline-none dark:border-indigo-700 dark:bg-indigo-950 dark:text-zinc-50";

const labelClasses =
  "block text-sm font-medium text-zinc-700 dark:text-zinc-300";

// Shared by both the "add adaptation" and "edit adaptation" pages, so the
// two forms can't drift out of sync with each other.
export function AdaptationForm({
  action,
  defaultValues,
  submitLabel,
  pendingLabel,
}: {
  action: (
    prevState: AdaptationFormState,
    formData: FormData
  ) => Promise<AdaptationFormState>;
  defaultValues?: DefaultValues;
  submitLabel: string;
  pendingLabel: string;
}) {
  const [state, formAction, pending] = useActionState(action, {
    error: null,
  });

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
            defaultValue={defaultValues?.title ?? ""}
            className={inputClasses}
          />
        </div>
        <div>
          <label htmlFor="author" className={labelClasses}>
            Author
          </label>
          <input
            id="author"
            name="author"
            type="text"
            defaultValue={defaultValues?.author ?? ""}
            className={inputClasses}
          />
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
            defaultValue={defaultValues?.movie_title ?? ""}
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
            defaultValue={defaultValues?.director ?? ""}
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
            defaultValue={defaultValues?.book_publish_year ?? ""}
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
            defaultValue={defaultValues?.movie_release_year ?? ""}
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
          defaultValue={defaultValues?.genres?.join(", ") ?? ""}
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
          defaultValue={defaultValues?.synopsis ?? ""}
          className={inputClasses}
        />
      </div>

      <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
        <div>
          <label htmlFor="book_cover_url" className={labelClasses}>
            Book cover image URL{" "}
            <span className="text-zinc-400">(optional)</span>
          </label>
          <input
            id="book_cover_url"
            name="book_cover_url"
            type="url"
            placeholder="https://…"
            defaultValue={defaultValues?.book_cover_url ?? ""}
            className={inputClasses}
          />
        </div>
        <div>
          <label htmlFor="movie_poster_url" className={labelClasses}>
            Movie poster image URL{" "}
            <span className="text-zinc-400">(optional)</span>
          </label>
          <input
            id="movie_poster_url"
            name="movie_poster_url"
            type="url"
            placeholder="https://…"
            defaultValue={defaultValues?.movie_poster_url ?? ""}
            className={inputClasses}
          />
        </div>
      </div>
      <p className="-mt-3 text-xs text-zinc-500 dark:text-zinc-400">
        Paste a link to an image already hosted somewhere (Wikipedia, an
        official press kit, etc.) — there&apos;s no file upload yet, just a
        web address.
      </p>

      {state.error && (
        <p className="rounded-lg border border-red-300 bg-red-50 px-4 py-3 text-sm text-red-800 dark:border-red-900 dark:bg-red-950 dark:text-red-200">
          {state.error}
        </p>
      )}

      <button
        type="submit"
        disabled={pending}
        className="w-full rounded-lg bg-indigo-600 px-5 py-2.5 font-medium text-white transition-colors hover:bg-indigo-700 disabled:opacity-50 dark:bg-indigo-500 dark:hover:bg-indigo-400"
      >
        {pending ? pendingLabel : submitLabel}
      </button>
    </form>
  );
}
