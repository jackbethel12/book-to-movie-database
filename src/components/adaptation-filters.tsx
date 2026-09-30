"use client";

import { useRouter } from "next/navigation";
import { useEffect, useRef, useState, useTransition, type FormEvent } from "react";

// Wraps the search box, genre pills, and the results grid/list passed in as
// children. Both the text search and genre pills navigate through the
// client-side router instead of a full page reload, and the results fade
// out/in smoothly while the new data streams in — the same soft opacity
// transition the card hover effect uses, rather than an abrupt page jump.
function buildHref(q: string, genres: string[]) {
  const params = new URLSearchParams();
  if (q) params.set("q", q);
  for (const g of genres) params.append("genre", g);
  const qs = params.toString();
  return qs ? `/?${qs}` : "/";
}

export function AdaptationFilters({
  allGenres,
  selectedGenres,
  q,
  children,
}: {
  allGenres: string[];
  selectedGenres: string[];
  q: string;
  children: React.ReactNode;
}) {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();
  const resultsRef = useRef<HTMLDivElement>(null);
  const innerRef = useRef<HTMLDivElement>(null);

  // The result count can swing wildly between filters (47 cards down to 9,
  // say), and an opacity fade alone doesn't stop the page height from
  // instantly collapsing when that happens — everything below just snaps
  // upward, which is what still reads as "choppy". Locking the container's
  // height to its pre-click size, then animating it down to the new
  // content's actual height once it arrives, turns that snap into a smooth
  // resize instead.
  const [lockedHeight, setLockedHeight] = useState<number | null>(null);

  function navigate(nextQ: string, nextGenres: string[]) {
    if (resultsRef.current) {
      setLockedHeight(resultsRef.current.getBoundingClientRect().height);
    }
    startTransition(() => {
      router.push(buildHref(nextQ, nextGenres));
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

  function handleSearchSubmit(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const formData = new FormData(e.currentTarget);
    navigate((formData.get("q") as string) ?? "", selectedGenres);
  }

  function toggleGenre(genre: string) {
    const nextGenres = selectedGenres.includes(genre)
      ? selectedGenres.filter((g) => g !== genre)
      : [...selectedGenres, genre];
    navigate(q, nextGenres);
  }

  return (
    <div>
      <div className="mb-10 rounded-2xl border border-stone-900/10 bg-elevated p-4 shadow-sm sm:p-5 dark:border-stone-100/10 dark:bg-stone-900">
        <form
          onSubmit={handleSearchSubmit}
          className="flex flex-col gap-3 sm:flex-row sm:items-center"
        >
          <div className="relative sm:flex-1">
            <span
              className="pointer-events-none absolute top-1/2 left-3.5 -translate-y-1/2 text-stone-400"
              aria-hidden
            >
              ⌕
            </span>
            <input
              type="text"
              name="q"
              defaultValue={q}
              placeholder="Search by title, author, or director…"
              className="w-full rounded-xl border border-stone-300 bg-stone-50 py-2.5 pr-4 pl-9 text-stone-900 focus:border-accent focus:ring-2 focus:ring-accent/20 focus:outline-none dark:border-stone-700 dark:bg-stone-950 dark:text-stone-50"
            />
          </div>
          <button
            type="submit"
            className="w-full rounded-xl bg-accent px-5 py-2.5 font-medium text-white transition-colors hover:bg-accent-hover sm:w-auto"
          >
            Search
          </button>
        </form>

        {allGenres.length > 0 && (
          <div className="mt-3 flex flex-wrap gap-2">
            {allGenres.map((g) => {
              const active = selectedGenres.includes(g);
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
        )}
      </div>

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
  );
}
