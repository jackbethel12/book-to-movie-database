import type { Metadata } from "next";
import Link from "next/link";
import { RequestForm } from "./request-form";

export const metadata: Metadata = {
  title: "Request an adaptation",
};

export default function RequestPage() {
  return (
    <div className="relative mx-auto max-w-4xl px-6 py-14">
      <div
        className="pointer-events-none absolute top-8 right-[-6rem] -z-10 h-64 w-64 rounded-full bg-accent/10 blur-3xl"
        aria-hidden
      />

      <Link
        href="/"
        className="animate-fade-up text-sm font-medium text-stone-500 hover:text-stone-800 dark:text-stone-400 dark:hover:text-stone-200"
      >
        ← Back to all adaptations
      </Link>

      <div className="mt-6 grid gap-10 lg:grid-cols-[minmax(0,1fr)_minmax(0,1.3fr)] lg:items-start">
        <div
          className="animate-fade-up lg:sticky lg:top-24"
          style={{ animationDelay: "60ms" }}
        >
          <span className="text-xs font-semibold tracking-[0.2em] text-accent uppercase">
            Contribute
          </span>
          <h1 className="mt-3 font-serif text-3xl font-semibold tracking-tight text-stone-900 sm:text-4xl dark:text-stone-50">
            Request an adaptation
          </h1>
          <p className="mt-3 text-stone-600 dark:text-stone-400">
            Don&apos;t see a book/movie pair you want to log differences
            for? Send over the basics and we&apos;ll look into adding it.
          </p>
          <p className="mt-6 text-sm text-stone-500 dark:text-stone-400">
            Only the book title, movie title, and movie year are required —
            everything else is a bonus if you happen to know it.
          </p>
        </div>

        <div
          className="animate-fade-up rounded-2xl border border-stone-900/10 bg-elevated p-6 shadow-sm sm:p-8 dark:border-stone-100/10 dark:bg-stone-900"
          style={{ animationDelay: "120ms" }}
        >
          <RequestForm />
        </div>
      </div>
    </div>
  );
}
