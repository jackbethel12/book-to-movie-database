import { LoginForm } from "./login-form";

export default async function LoginPage({
  searchParams,
}: PageProps<"/login">) {
  const params = await searchParams;
  const hadError = params.error === "auth";

  return (
    <div className="min-h-full bg-zinc-50 dark:bg-black">
      <div className="mx-auto max-w-sm px-6 py-16">
        <h1 className="text-2xl font-bold tracking-tight text-zinc-900 dark:text-zinc-50">
          Log in
        </h1>
        <p className="mt-2 text-sm text-zinc-600 dark:text-zinc-400">
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
