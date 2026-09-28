import Link from "next/link";

// A simple footer shown on every page, mirroring the site header's style.
export function SiteFooter() {
  return (
    <footer className="border-t border-stone-900/10 dark:border-stone-100/10">
      <div className="mx-auto flex max-w-5xl flex-col items-center gap-3 px-6 py-8 text-sm text-stone-500 sm:flex-row sm:justify-between dark:text-stone-400">
        <p>
          &copy; {new Date().getFullYear()} Book vs. Movie · a crowdsourced
          reference
        </p>
        <nav className="flex gap-5">
          <Link
            href="/"
            className="transition-colors hover:text-stone-800 dark:hover:text-stone-200"
          >
            Home
          </Link>
          <Link
            href="/submit"
            className="transition-colors hover:text-stone-800 dark:hover:text-stone-200"
          >
            Submit a difference
          </Link>
        </nav>
      </div>
    </footer>
  );
}
