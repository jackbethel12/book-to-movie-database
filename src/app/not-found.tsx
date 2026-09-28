import Link from "next/link";

// Shown whenever notFound() is called anywhere in the app (e.g. visiting
// /adaptations/<an-id-that-doesn't-exist>), or for any URL that doesn't
// match a route at all.
export default function NotFound() {
  return (
    <div className="relative mx-auto max-w-xl px-6 py-20">
      <div
        className="pointer-events-none absolute top-[-2rem] left-1/2 -z-10 h-56 w-56 -translate-x-1/2 rounded-full bg-accent/10 blur-3xl"
        aria-hidden
      />
      <div className="animate-fade-up rounded-2xl border border-stone-900/10 bg-elevated p-6 text-center shadow-sm sm:p-10 dark:border-stone-100/10 dark:bg-stone-900">
        <p
          className="font-serif text-6xl font-semibold text-accent/20"
          aria-hidden
        >
          404
        </p>
        <h1 className="mt-2 font-serif text-3xl font-semibold tracking-tight text-stone-900 dark:text-stone-50">
          Page not found
        </h1>
        <p className="mt-3 text-stone-600 dark:text-stone-400">
          We couldn&apos;t find what you were looking for — it may have
          been removed, or the link might be off.
        </p>
        <Link
          href="/"
          className="mt-6 inline-block rounded-full bg-accent px-5 py-2.5 font-medium text-white shadow-sm transition-transform hover:-translate-y-0.5 hover:bg-accent-hover"
        >
          Back to all adaptations
        </Link>
      </div>
    </div>
  );
}
