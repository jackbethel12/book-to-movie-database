"use client";

import { useState } from "react";
import type { DifferenceEntry } from "@/lib/types";

// A single "here's what changed" entry, written to read as part of a
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

  // A longer write-up in "detail" can span multiple paragraphs — the
  // submitter just leaves a blank line between them, same as writing an
  // email. Split on those blank lines so each one renders as its own <p>
  // instead of getting mashed into a single wall of text.
  const detailParagraphs = entry.detail
    ? entry.detail
        .split(/\n{2,}/)
        .map((paragraph) => paragraph.trim())
        .filter(Boolean)
    : [];

  const proseClasses =
    "text-base leading-relaxed text-zinc-700 dark:text-zinc-300";

  return (
    <div>
      <p className={proseClasses}>
        {entry.spoiler_flag && (
          <span className="mr-2 inline-block rounded-full bg-amber-100 px-2 py-0.5 align-middle text-xs font-medium text-amber-800 dark:bg-amber-950 dark:text-amber-300">
            Spoiler
          </span>
        )}
        <strong className="font-semibold text-zinc-900 dark:text-zinc-50">
          {entry.summary}
        </strong>
        {/* A single short paragraph of detail just continues right after
            the bold summary sentence, so brief entries stay compact. */}
        {detailParagraphs.length === 1 && <> {detailParagraphs[0]}</>}
      </p>
      {detailParagraphs.length > 1 &&
        detailParagraphs.map((paragraph, i) => (
          <p key={i} className={`${proseClasses} mt-3`}>
            {paragraph}
          </p>
        ))}
    </div>
  );
}
