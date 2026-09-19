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

  let isAdmin = false;
  if (user) {
    const { data: profile } = await supabase
      .from("profiles")
      .select("is_admin")
      .eq("id", user.id)
      .single();
    isAdmin = profile?.is_admin ?? false;
  }

  return (
    <div className="border-b border-amber-200 bg-white dark:border-stone-800 dark:bg-stone-950">
      <div className="mx-auto flex max-w-5xl items-center justify-between px-6 py-3 text-sm">
        <Link
          href="/"
          className="font-semibold text-amber-800 dark:text-amber-500"
        >
          Book vs. Movie
        </Link>
        <div className="flex items-center gap-4">
          <Link
            href="/submit"
            className="text-stone-600 hover:text-stone-900 dark:text-stone-400 dark:hover:text-stone-100"
          >
            Submit
          </Link>
          {isAdmin && (
            <Link
              href="/admin"
              className="text-stone-600 hover:text-stone-900 dark:text-stone-400 dark:hover:text-stone-100"
            >
              Moderate
            </Link>
          )}
          {user ? (
            <div className="flex items-center gap-3">
              <span className="hidden text-stone-500 sm:inline dark:text-stone-400">
                {user.email}
              </span>
              <form action={signOut}>
                <button
                  type="submit"
                  className="text-stone-600 hover:text-stone-900 dark:text-stone-400 dark:hover:text-stone-100"
                >
                  Log out
                </button>
              </form>
            </div>
          ) : (
            <Link
              href="/login"
              className="rounded-lg bg-amber-800 px-3 py-1.5 font-medium text-white transition-colors hover:bg-amber-900 dark:bg-amber-600 dark:hover:bg-amber-500"
            >
              Log in
            </Link>
          )}
        </div>
      </div>
    </div>
  );
}
