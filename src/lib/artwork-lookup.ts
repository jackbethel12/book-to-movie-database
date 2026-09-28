// Auto-fills poster/cover art for a newly added adaptation when the admin
// leaves those fields blank, so new content doesn't need a separate manual
// image step. Both lookups are best-effort: any failure (missing API key,
// network error, no match) just falls back to no image, same as before this
// existed — it never blocks saving the adaptation itself.

export async function lookupMoviePoster(
  movieTitle: string,
  year: number | null
): Promise<string | null> {
  const apiKey = process.env.TMDB_API_KEY;
  if (!apiKey) return null;

  try {
    const params = new URLSearchParams({ api_key: apiKey, query: movieTitle });
    if (year) params.set("primary_release_year", String(year));

    const res = await fetch(
      `https://api.themoviedb.org/3/search/movie?${params.toString()}`
    );
    if (!res.ok) return null;

    const data = await res.json();
    const posterPath = data?.results?.[0]?.poster_path;
    return typeof posterPath === "string"
      ? `https://image.tmdb.org/t/p/w500${posterPath}`
      : null;
  } catch {
    return null;
  }
}

export async function lookupBookCover(
  title: string,
  author: string | null
): Promise<string | null> {
  try {
    const params = new URLSearchParams({
      title,
      fields: "title,cover_i",
      limit: "5",
    });
    if (author) params.set("author", author);

    const res = await fetch(`https://openlibrary.org/search.json?${params.toString()}`);
    if (!res.ok) return null;

    const data = await res.json();
    const docs: Array<{ title?: string; cover_i?: number }> = data?.docs ?? [];

    const normalize = (s: string) => s.toLowerCase().replace(/[^a-z0-9]/g, "");
    const exact = docs.find(
      (d) => d.cover_i && d.title && normalize(d.title) === normalize(title)
    );
    const best = exact ?? docs.find((d) => d.cover_i);

    return best?.cover_i
      ? `https://covers.openlibrary.org/b/id/${best.cover_i}-L.jpg`
      : null;
  } catch {
    return null;
  }
}
