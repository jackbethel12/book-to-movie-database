import Link from "next/link";

// Shown whenever notFound() is called anywhere in the app (e.g. visiting
// /adaptations/<an-id-that-doesn't-exist>), or for any URL that doesn't
// match a route at all.
export default function NotFound() {
  return (
    <div className="min-h-full bg-[#C49A75]">
      <div className="mx-auto max-w-xl px-6 py-16">
        <div className="rounded-2xl bg-stone-50 p-6 text-center shadow-xl sm:p-10 dark:bg-stone-900">
          <h1 className="text-3xl font-bold tracking-tight text-stone-900 dark:text-stone-50">
            Page not found
          </h1>
          <p className="mt-3 text-stone-600 dark:text-stone-400">
            We couldn&apos;t find what you were looking for — it may have
            been removed, or the link might be off.
          </p>
          <Link
            href="/"
            className="mt-6 inline-block rounded-lg bg-amber-800 px-5 py-2.5 font-medium text-white transition-colors hover:bg-amber-900 dark:bg-amber-600 dark:hover:bg-amber-500"
          >
            Back to all adaptations
          </Link>
        </div>
      </div>
    </div>
  );
}
