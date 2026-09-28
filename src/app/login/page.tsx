import type { Metadata } from "next";
import { LoginForm } from "./login-form";

export const metadata: Metadata = {
  title: "Log in",
};

export default async function LoginPage({
  searchParams,
}: PageProps<"/login">) {
  const params = await searchParams;
  const hadError = params.error === "auth";

  return (
    <div className="relative mx-auto max-w-sm px-6 py-20">
      <div
        className="pointer-events-none absolute top-[-2rem] left-1/2 -z-10 h-56 w-56 -translate-x-1/2 rounded-full bg-accent/10 blur-3xl"
        aria-hidden
      />

      <div className="animate-fade-up rounded-2xl border border-stone-900/10 bg-elevated p-6 shadow-sm sm:p-10 dark:border-stone-100/10 dark:bg-stone-900">
        <div className="flex justify-center">
          <span
            className="flex h-11 w-11 items-center justify-center rounded-full bg-accent/10 text-lg text-accent"
            aria-hidden
          >
            ✉
          </span>
        </div>

        <h1 className="mt-4 text-center font-serif text-2xl font-semibold tracking-tight text-stone-900 dark:text-stone-50">
          Log in
        </h1>
        <p className="mt-2 text-center text-sm text-stone-600 dark:text-stone-400">
          Enter your email and we&apos;ll send you a link to log in — no
          password needed.
        </p>

        {hadError && (
          <p className="mt-4 rounded-lg border border-red-300 bg-red-50 px-4 py-3 text-sm text-red-800 dark:border-red-900 dark:bg-red-950 dark:text-red-200">
            That login link didn&apos;t work or has expired. Please try
            again.
          </p>
        )}

        <div className="mt-6">
          <LoginForm />
        </div>
      </div>
    </div>
  );
}
