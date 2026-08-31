"use client";

import { useState } from "react";
import type { DifferenceEntry } from "@/lib/types";

// A single "here's what changed" entry. If it's flagged as a spoiler, it
// starts hidden behind a click-to-reveal button (this is the only bit of
// the site so far that needs to run in the browser, since it reacts to a
// click without reloading the page).
export function DifferenceEntryCard({ entry }: { entry: DifferenceEntry }) {
  const [revealed, setRevealed] = useState(!entry.spoiler_flag);

  if (entry.spoiler_flag && !revealed) {
    return (
      <li className="rounded-lg border border-amber-200 bg-amber-50 dark:border-amber-900 dark:bg-amber-950/40">
        <button
          type="button"
          onClick={() => setRevealed(true)}
          className="w-full px-4 py-3 text-left text-sm font-medium text-amber-800 hover:bg-amber-100 dark:text-amber-300 dark:hover:bg-amber-950"
        >
          ⚠️ Spoiler — click to reveal
        </button>
      </li>
    );
  }

  return (
    <li className="rounded-lg border border-zinc-200 bg-white p-4 dark:border-zinc-800 dark:bg-zinc-900">
      {entry.spoiler_flag && (
        <span className="mb-2 inline-block rounded-full bg-amber-100 px-2 py-0.5 text-xs font-medium text-amber-800 dark:bg-amber-950 dark:text-amber-300">
          Spoiler
        </span>
      )}
      <p className="font-medium text-zinc-900 dark:text-zinc-50">
        {entry.summary}
      </p>
      {entry.detail && (
        <p className="mt-1.5 text-sm text-zinc-600 dark:text-zinc-400">
          {entry.detail}
        </p>
      )}
    </li>
  );
}
