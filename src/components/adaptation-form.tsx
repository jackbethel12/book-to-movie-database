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
  "mt-1 w-full rounded-lg border border-stone-300 bg-stone-50 px-3 py-2 text-stone-900 shadow-sm focus:border-accent focus:ring-2 focus:ring-accent/20 focus:outline-none dark:border-stone-700 dark:bg-stone-950 dark:text-stone-50";

const labelClasses =
  "block text-sm font-medium text-stone-700 dark:text-stone-300";

const sectionLabelClasses =
  "text-xs font-semibold tracking-[0.15em] text-accent/80 uppercase";

const sectionClasses =
  "space-y-4 border-t border-stone-900/10 pt-6 first:border-t-0 first:pt-0 dark:border-stone-100/10";

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
    <form action={formAction} className="space-y-6">
      <div className={sectionClasses}>
        <p className={sectionLabelClasses}>Book</p>
        <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
          <div>
            <label htmlFor="title" className={labelClasses}>
              Title
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
            <label htmlFor="book_publish_year" className={labelClasses}>
              Publish year
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
            <label htmlFor="book_cover_url" className={labelClasses}>
              Cover image URL{" "}
              <span className="text-stone-400">(optional)</span>
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
        </div>
      </div>

      <div className={sectionClasses}>
        <p className={sectionLabelClasses}>Movie</p>
        <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
          <div>
            <label htmlFor="movie_title" className={labelClasses}>
              Title
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
            <label htmlFor="movie_release_year" className={labelClasses}>
              Release year
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
          <div>
            <label htmlFor="movie_poster_url" className={labelClasses}>
              Poster image URL{" "}
              <span className="text-stone-400">(optional)</span>
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
        <p className="text-xs text-stone-500 dark:text-stone-400">
          Paste a link to an image already hosted somewhere (Wikipedia, an
          official press kit, etc.) — there&apos;s no file upload yet, just a
          web address.
        </p>
      </div>

      <div className={sectionClasses}>
        <p className={sectionLabelClasses}>Details</p>
        <div>
          <label htmlFor="genres" className={labelClasses}>
            Genres <span className="text-stone-400">(comma-separated)</span>
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
            Synopsis <span className="text-stone-400">(optional)</span>
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
        {pending ? pendingLabel : submitLabel}
      </button>
    </form>
  );
}
