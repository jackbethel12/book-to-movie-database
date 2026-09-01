"use client";

import { useState } from "react";
import type { DifferenceEntry } from "@/lib/types";

// A single "here's what changed" entry, written to read as a paragraph in a
// flowing write-up rather than an isolated card. If it's flagged as a
// spoiler, it starts hidden behind a click-to-reveal prompt (the only bit
// of this page that needs to run in the browser, since it reacts to a click
// without reloading the page).
export function DifferenceEntryCard({ entry }: { entry: DifferenceEntry }) {
  const [revealed, setRevealed] = useState(!entry.spoiler_flag);

  if (entry.spoiler_flag && !revealed) {
    return (
      <p>
        <button
          type="button"
          onClick={() => setRevealed(true)}
          className="rounded-md bg-amber-50 px-3 py-1.5 text-sm font-medium text-amber-800 hover:bg-amber-100 dark:bg-amber-950/40 dark:text-amber-300 dark:hover:bg-amber-950"
        >
          ⚠️ Spoiler — click to reveal
        </button>
      </p>
    );
  }

  return (
    <p className="text-base leading-relaxed text-zinc-700 dark:text-zinc-300">
      {entry.spoiler_flag && (
        <span className="mr-2 inline-block rounded-full bg-amber-100 px-2 py-0.5 align-middle text-xs font-medium text-amber-800 dark:bg-amber-950 dark:text-amber-300">
          Spoiler
        </span>
      )}
      <strong className="font-semibold text-zinc-900 dark:text-zinc-50">
        {entry.summary}
      </strong>
      {entry.detail && <> {entry.detail}</>}
    </p>
  );
}
