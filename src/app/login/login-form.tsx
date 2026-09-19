"use client";

import { useActionState } from "react";
import { sendMagicLink, type MagicLinkState } from "./actions";

const initialState: MagicLinkState = { error: null, sent: false };

export function LoginForm() {
  const [state, formAction, pending] = useActionState(
    sendMagicLink,
    initialState
  );

  if (state.sent) {
    return (
      <p className="rounded-lg border border-emerald-300 bg-emerald-50 px-4 py-3 text-sm text-emerald-800 dark:border-emerald-900 dark:bg-emerald-950 dark:text-emerald-200">
        Check your email — we sent you a link to log in. You can close this
        tab.
      </p>
    );
  }

  return (
    <form action={formAction} className="space-y-4">
      <div>
        <label
          htmlFor="email"
          className="block text-sm font-medium text-stone-700 dark:text-stone-300"
        >
          Email address
        </label>
        <input
          id="email"
          name="email"
          type="email"
          required
          placeholder="you@example.com"
          className="mt-1 w-full rounded-lg border border-stone-300 bg-stone-50 px-3 py-2 text-stone-900 shadow-sm focus:border-amber-700 focus:outline-none dark:focus:border-amber-500 dark:border-stone-700 dark:bg-stone-950 dark:text-stone-50"
        />
      </div>

      {state.error && (
        <p className="rounded-lg border border-red-300 bg-red-50 px-4 py-3 text-sm text-red-800 dark:border-red-900 dark:bg-red-950 dark:text-red-200">
          {state.error}
        </p>
      )}

      <button
        type="submit"
        disabled={pending}
        className="w-full rounded-lg bg-amber-800 px-5 py-2.5 font-medium text-white transition-colors hover:bg-amber-900 disabled:opacity-50 dark:bg-amber-600 dark:hover:bg-amber-500"
      >
        {pending ? "Sending…" : "Send magic link"}
      </button>
    </form>
  );
}
