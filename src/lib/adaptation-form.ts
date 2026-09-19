// Shared by the "add adaptation" and "edit adaptation" Server Actions so
// the same parsing/validation logic isn't duplicated between them.

export function toNullableInt(value: FormDataEntryValue | null): number | null {
  if (typeof value !== "string" || value.trim() === "") return null;
  const parsed = Number.parseInt(value, 10);
  return Number.isFinite(parsed) ? parsed : null;
}

export function toNullableString(value: FormDataEntryValue | null): string | null {
  if (typeof value !== "string") return null;
  const trimmed = value.trim();
  return trimmed === "" ? null : trimmed;
}

export type AdaptationFormValues = {
  title: string;
  movie_title: string;
  author: string | null;
  director: string | null;
  book_publish_year: number | null;
  movie_release_year: number | null;
  genres: string[];
  synopsis: string | null;
  book_cover_url: string | null;
  movie_poster_url: string | null;
};

export function parseAdaptationFormData(
  formData: FormData
): { error: string } | { error: null; values: AdaptationFormValues } {
  const title = toNullableString(formData.get("title"));
  const movieTitle = toNullableString(formData.get("movie_title"));

  if (!title) {
    return { error: "Please enter the book's title." };
  }
  if (!movieTitle) {
    return { error: "Please enter the movie's title." };
  }

  const genresRaw = toNullableString(formData.get("genres"));
  const genres = genresRaw
    ? genresRaw
        .split(",")
        .map((g) => g.trim())
        .filter(Boolean)
    : [];

  return {
    error: null,
    values: {
      title,
      movie_title: movieTitle,
      author: toNullableString(formData.get("author")),
      director: toNullableString(formData.get("director")),
      book_publish_year: toNullableInt(formData.get("book_publish_year")),
      movie_release_year: toNullableInt(formData.get("movie_release_year")),
      genres,
      synopsis: toNullableString(formData.get("synopsis")),
      book_cover_url: toNullableString(formData.get("book_cover_url")),
      movie_poster_url: toNullableString(formData.get("movie_poster_url")),
    },
  };
}
