"use client";

import { useRouter } from "next/navigation";
import { useEffect, useRef, useState, useTransition } from "react";

// Wraps the search box, genre pills, decade pills, and the results
// grid/list passed in as children, laid out as a sidebar next to the
// results rather than a bar above them. Filter picks are staged locally
// and only take effect once "Apply filters" is pressed, so toggling a few
// genres doesn't fire off a navigation for each click. "Clear filters"
// resets everything and applies immediately. Applying navigates through
// the client-side router instead of a full page reload, and the results
// fade out/in smoothly while the new data streams in.
function buildHref(q: string, genres: string[], decade: number | null) {
  const params = new URLSearchParams();
  if (q) params.set("q", q);
  for (const g of genres) params.append("genre", g);
  if (decade !== null) params.set("decade", String(decade));
  const qs = params.toString();
  return qs ? `/?${qs}` : "/";
}

export function AdaptationFilters({
  allGenres,
  selectedGenres,
  allDecades,
  selectedDecade,
  q,
  children,
}: {
  allGenres: string[];
  selectedGenres: string[];
  allDecades: number[];
  selectedDecade: number | null;
  q: string;
  children: React.ReactNode;
}) {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();
  const resultsRef = useRef<HTMLDivElement>(null);
  const innerRef = useRef<HTMLDivElement>(null);

  // Staged selections — what's checked/typed in the sidebar right now,
  // which may not match the applied filters (the props above) until
  // "Apply filters" is pressed.
  const [pendingQ, setPendingQ] = useState(q);
  const [pendingGenres, setPendingGenres] = useState(selectedGenres);
  const [pendingDecade, setPendingDecade] = useState(selectedDecade);

  // Keep the staged state in sync whenever the applied filters change from
  // outside this component's own Apply/Clear actions — e.g. the browser
  // back/forward buttons, or a link elsewhere on the site that lands here
  // with query params already set.
  useEffect(() => {
    setPendingQ(q);
    setPendingGenres(selectedGenres);
    setPendingDecade(selectedDecade);
    // selectedGenres is a fresh array every render; compare its contents
    // instead of re-syncing on every parent re-render.
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [q, selectedGenres.join(","), selectedDecade]);

  const hasPendingChanges =
    pendingQ !== q ||
    pendingDecade !== selectedDecade ||
    pendingGenres.length !== selectedGenres.length ||
    pendingGenres.some((g) => !selectedGenres.includes(g));

  const hasAnyFilters = q.length > 0 || selectedGenres.length > 0 || selectedDecade !== null;

  // The result count can swing wildly between filters (47 cards down to 9,
  // say), and an opacity fade alone doesn't stop the page height from
  // instantly collapsing when that happens — everything below just snaps
  // upward, which is what still reads as "choppy". Locking the container's
  // height to its pre-click size, then animating it down to the new
  // content's actual height once it arrives, turns that snap into a smooth
  // resize instead.
  const [lockedHeight, setLockedHeight] = useState<number | null>(null);

  function navigate(nextQ: string, nextGenres: string[], nextDecade: number | null) {
    if (resultsRef.current) {
      setLockedHeight(resultsRef.current.getBoundingClientRect().height);
    }
    startTransition(() => {
      router.push(buildHref(nextQ, nextGenres, nextDecade));
    });
  }

  useEffect(() => {
    if (isPending || lockedHeight === null || !innerRef.current) return;
    // Measured on the unclipped inner element, not the locked outer one —
    // scrollHeight can never report smaller than an element's own explicit
    // height, so measuring the locked element itself would just echo the
    // old locked value back instead of the new content's real height.
    const target = innerRef.current.getBoundingClientRect().height;
    const frame = requestAnimationFrame(() => setLockedHeight(target));
    const release = setTimeout(() => setLockedHeight(null), 350);
    return () => {
      cancelAnimationFrame(frame);
      clearTimeout(release);
    };
    // Only re-run when a new navigation settles (isPending flips to false).
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [isPending]);

  function toggleGenre(genre: string) {
    setPendingGenres((prev) =>
      prev.includes(genre) ? prev.filter((g) => g !== genre) : [...prev, genre]
    );
  }

  function toggleDecade(decade: number) {
    // Decades are mutually exclusive ranges, so picking one replaces
    // whichever was staged, and clicking the active one clears it.
    setPendingDecade((prev) => (prev === decade ? null : decade));
  }

  function applyFilters() {
    navigate(pendingQ, pendingGenres, pendingDecade);
  }

  function clearFilters() {
    setPendingQ("");
    setPendingGenres([]);
    setPendingDecade(null);
    navigate("", [], null);
  }

  return (
    <div className="lg:flex lg:items-start lg:gap-8">
      <aside className="mb-8 lg:sticky lg:top-8 lg:mb-0 lg:w-64 lg:shrink-0">
        <div className="rounded-2xl border border-stone-900/10 bg-elevated p-4 shadow-sm sm:p-5 dark:border-stone-100/10 dark:bg-stone-900">
          <div className="relative">
            <span
              className="pointer-events-none absolute top-1/2 left-3.5 -translate-y-1/2 text-stone-400"
              aria-hidden
            >
              ⌕
            </span>
            <input
              type="text"
              value={pendingQ}
              onChange={(e) => setPendingQ(e.target.value)}
              onKeyDown={(e) => {
                if (e.key === "Enter") applyFilters();
              }}
              placeholder="Search by title, author, or director…"
              className="w-full rounded-xl border border-stone-300 bg-stone-50 py-2.5 pr-4 pl-9 text-stone-900 focus:border-accent focus:ring-2 focus:ring-accent/20 focus:outline-none dark:border-stone-700 dark:bg-stone-950 dark:text-stone-50"
            />
          </div>

          {allGenres.length > 0 && (
            <div className="mt-4 border-t border-stone-900/10 pt-4 dark:border-stone-100/10">
              <span className="text-xs font-medium text-stone-400 dark:text-stone-500">
                Genre
              </span>
              <div className="mt-2 flex flex-wrap gap-2">
                {allGenres.map((g) => {
                  const active = pendingGenres.includes(g);
                  return (
                    <button
                      key={g}
                      type="button"
                      onClick={() => toggleGenre(g)}
                      className={`inline-block rounded-full border px-3 py-1 text-sm transition-colors ${
                        active
                          ? "border-accent bg-accent text-white"
                          : "border-stone-300 text-stone-600 hover:border-accent/40 dark:border-stone-700 dark:text-stone-300"
                      }`}
                    >
                      {g}
                    </button>
                  );
                })}
              </div>
            </div>
          )}

          {allDecades.length > 0 && (
            <div className="mt-4 border-t border-stone-900/10 pt-4 dark:border-stone-100/10">
              <span className="text-xs font-medium text-stone-400 dark:text-stone-500">
                Decade
              </span>
              <div className="mt-2 flex flex-wrap gap-2">
                {allDecades.map((d) => {
                  const active = pendingDecade === d;
                  return (
                    <button
                      key={d}
                      type="button"
                      onClick={() => toggleDecade(d)}
                      className={`inline-block rounded-full border px-3 py-1 text-sm transition-colors ${
                        active
                          ? "border-accent bg-accent text-white"
                          : "border-stone-300 text-stone-600 hover:border-accent/40 dark:border-stone-700 dark:text-stone-300"
                      }`}
                    >
                      {d}s
                    </button>
                  );
                })}
              </div>
            </div>
          )}

          <div className="mt-5 flex flex-col gap-2 border-t border-stone-900/10 pt-4 dark:border-stone-100/10">
            <button
              type="button"
              onClick={applyFilters}
              disabled={!hasPendingChanges}
              className="w-full rounded-xl bg-accent px-5 py-2.5 font-medium text-white transition-colors hover:bg-accent-hover disabled:cursor-not-allowed disabled:opacity-40 disabled:hover:bg-accent"
            >
              Apply filters
            </button>
            <button
              type="button"
              onClick={clearFilters}
              disabled={!hasAnyFilters && !hasPendingChanges}
              className="w-full rounded-xl border border-stone-300 px-5 py-2.5 font-medium text-stone-600 transition-colors hover:border-accent/40 hover:text-accent disabled:cursor-not-allowed disabled:opacity-40 disabled:hover:border-stone-300 disabled:hover:text-stone-600 dark:border-stone-700 dark:text-stone-300"
            >
              Clear filters
            </button>
          </div>
        </div>
      </aside>

      <div className="min-w-0 flex-1">
        <div
          ref={resultsRef}
          style={
            lockedHeight !== null
              ? { height: lockedHeight, overflow: "hidden" }
              : undefined
          }
          className={`transition-[opacity,height] duration-300 ease-out ${isPending ? "opacity-40" : "opacity-100"}`}
        >
          <div ref={innerRef}>{children}</div>
        </div>
      </div>
    </div>
  );
}
