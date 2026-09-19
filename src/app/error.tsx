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
    <div className="min-h-full bg-[#C49A75]">
      <div className="mx-auto max-w-xl px-6 py-16">
        <div className="rounded-2xl bg-stone-50 p-6 text-center shadow-xl sm:p-10 dark:bg-stone-900">
          <h1 className="text-3xl font-bold tracking-tight text-stone-900 dark:text-stone-50">
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
              className="rounded-lg bg-amber-800 px-5 py-2.5 font-medium text-white transition-colors hover:bg-amber-900 dark:bg-amber-600 dark:hover:bg-amber-500"
            >
              Try again
            </button>
            {/* A plain link (full reload) rather than next/link, since the
                app may be in a broken state that client-side navigation
                can't reliably recover from. */}
            {/* eslint-disable-next-line @next/next/no-html-link-for-pages -- deliberate full reload, see comment above */}
            <a
              href="/"
              className="rounded-lg border border-stone-300 px-5 py-2.5 font-medium text-stone-700 transition-colors hover:bg-stone-100 dark:border-stone-700 dark:text-stone-300 dark:hover:bg-stone-800"
            >
              Go home
            </a>
          </div>
        </div>
      </div>
    </div>
  );
}
