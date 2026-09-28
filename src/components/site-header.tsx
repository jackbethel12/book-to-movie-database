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
    <div className="sticky top-0 z-20 border-b border-stone-900/10 bg-[#fffdf9]/80 backdrop-blur-md dark:border-stone-100/10 dark:bg-stone-950/80">
      <div className="mx-auto flex max-w-5xl items-center justify-between px-6 py-4 text-sm">
        <Link
          href="/"
          className="flex items-center gap-2 font-serif text-lg font-semibold tracking-tight text-stone-900 dark:text-stone-50"
        >
          <span
            className="flex h-7 w-7 items-center justify-center rounded-full bg-accent text-xs text-white"
            aria-hidden
          >
            ⇄
          </span>
          Book vs. Movie
        </Link>
        <div className="flex items-center gap-5">
          <Link
            href="/submit"
            className="hidden text-stone-600 transition-colors hover:text-stone-900 sm:inline dark:text-stone-400 dark:hover:text-stone-100"
          >
            Submit
          </Link>
          {isAdmin && (
            <Link
              href="/admin"
              className="hidden text-stone-600 transition-colors hover:text-stone-900 sm:inline dark:text-stone-400 dark:hover:text-stone-100"
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
                  className="text-stone-600 transition-colors hover:text-stone-900 dark:text-stone-400 dark:hover:text-stone-100"
                >
                  Log out
                </button>
              </form>
            </div>
          ) : (
            <Link
              href="/login"
              className="rounded-full bg-accent px-4 py-1.5 font-medium text-white shadow-sm transition-colors hover:bg-accent-hover"
            >
              Log in
            </Link>
          )}
        </div>
      </div>
    </div>
  );
}
