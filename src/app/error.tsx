"use client";

import { useEffect } from "react";

// Catches unexpected runtime errors anywhere below the root layout, so
// visitors see something on-brand instead of a blank/broken page. Error
// boundaries have to be Client Components.
export default function ErrorPage({
  error,
  retry,
}: {
  error: Error & { digest?: string };
  retry: () => void;
}) {
  useEffect(() => {
    console.error(error);
  }, [error]);

  return (
    <div className="relative mx-auto max-w-xl px-6 py-20">
      <div
        className="pointer-events-none absolute top-[-2rem] left-1/2 -z-10 h-56 w-56 -translate-x-1/2 rounded-full bg-accent/10 blur-3xl"
        aria-hidden
      />
      <div className="animate-fade-up rounded-2xl border border-stone-900/10 bg-elevated p-6 text-center shadow-sm sm:p-10 dark:border-stone-100/10 dark:bg-stone-900">
        <div className="flex justify-center">
          <span
            className="flex h-11 w-11 items-center justify-center rounded-full bg-accent/10 text-lg text-accent"
            aria-hidden
          >
            ⚠
          </span>
        </div>
        <h1 className="mt-4 font-serif text-3xl font-semibold tracking-tight text-stone-900 dark:text-stone-50">
          Something went wrong
        </h1>
        <p className="mt-3 text-stone-600 dark:text-stone-400">
          An unexpected error occurred. You can try again, or head back to
          the homepage.
        </p>
        <div className="mt-6 flex justify-center gap-3">
          <button
            type="button"
            onClick={() => retry()}
            className="rounded-full bg-accent px-5 py-2.5 font-medium text-white shadow-sm transition-transform hover:-translate-y-0.5 hover:bg-accent-hover"
          >
            Try again
          </button>
          {/* A plain link (full reload) rather than next/link, since the
              app may be in a broken state that client-side navigation
              can't reliably recover from. */}
          {/* eslint-disable-next-line @next/next/no-html-link-for-pages -- deliberate full reload, see comment above */}
          <a
            href="/"
            className="rounded-full border border-stone-300 px-5 py-2.5 font-medium text-stone-700 transition-colors hover:bg-stone-100 dark:border-stone-700 dark:text-stone-300 dark:hover:bg-stone-800"
          >
            Go home
          </a>
        </div>
      </div>
    </div>
  );
}
