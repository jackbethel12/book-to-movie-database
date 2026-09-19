"use server";

import { redirect } from "next/navigation";
import { revalidatePath } from "next/cache";
import { requireAdmin } from "@/lib/require-admin";

export type CreateAdaptationState = { error: string | null };

function toNullableInt(value: FormDataEntryValue | null): number | null {
  if (typeof value !== "string" || value.trim() === "") return null;
  const parsed = Number.parseInt(value, 10);
  return Number.isFinite(parsed) ? parsed : null;
}

function toNullableString(value: FormDataEntryValue | null): string | null {
  if (typeof value !== "string") return null;
  const trimmed = value.trim();
  return trimmed === "" ? null : trimmed;
}

export async function createAdaptation(
  _prevState: CreateAdaptationState,
  formData: FormData
): Promise<CreateAdaptationState> {
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

  const supabase = await requireAdmin();

  const { data, error } = await supabase
    .from("adaptations")
    .insert({
      title,
      movie_title: movieTitle,
      author: toNullableString(formData.get("author")),
      director: toNullableString(formData.get("director")),
      book_publish_year: toNullableInt(formData.get("book_publish_year")),
      movie_release_year: toNullableInt(formData.get("movie_release_year")),
      genres,
      synopsis: toNullableString(formData.get("synopsis")),
    })
    .select("id")
    .single();

  if (error || !data) {
    return {
      error: `Something went wrong saving this adaptation: ${error?.message ?? "unknown error"}`,
    };
  }

  revalidatePath("/", "layout");
  redirect(`/adaptations/${data.id}`);
}
