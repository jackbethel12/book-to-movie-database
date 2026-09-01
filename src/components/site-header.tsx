import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { signOut } from "@/lib/actions/auth";

// A slim bar shown on every page, so login state and basic nav are always
// visible. This is a Server Component, so it checks who's logged in on the
// server before the page is ever sent to the browser.
export async function SiteHeader() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  return (
    <div className="border-b border-zinc-200 bg-white dark:border-zinc-800 dark:bg-zinc-950">
      <div className="mx-auto flex max-w-5xl items-center justify-between px-6 py-3 text-sm">
        <Link
          href="/"
          className="font-semibold text-zinc-900 dark:text-zinc-50"
        >
          Book vs. Movie
        </Link>
        <div className="flex items-center gap-4">
          <Link
            href="/submit"
            className="text-zinc-600 hover:text-zinc-900 dark:text-zinc-400 dark:hover:text-zinc-100"
          >
            Submit
          </Link>
          {user ? (
            <div className="flex items-center gap-3">
              <span className="hidden text-zinc-500 sm:inline dark:text-zinc-400">
                {user.email}
              </span>
              <form action={signOut}>
                <button
                  type="submit"
                  className="text-zinc-600 hover:text-zinc-900 dark:text-zinc-400 dark:hover:text-zinc-100"
                >
                  Log out
                </button>
              </form>
            </div>
          ) : (
            <Link
              href="/login"
              className="rounded-lg bg-zinc-900 px-3 py-1.5 font-medium text-white transition-colors hover:bg-zinc-700 dark:bg-zinc-50 dark:text-zinc-900 dark:hover:bg-zinc-300"
            >
              Log in
            </Link>
          )}
        </div>
      </div>
    </div>
  );
}
