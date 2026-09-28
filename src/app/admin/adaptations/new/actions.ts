"use server";

import { redirect } from "next/navigation";
import { revalidatePath } from "next/cache";
import { requireAdmin } from "@/lib/require-admin";
import { parseAdaptationFormData } from "@/lib/adaptation-form";
import { lookupMoviePoster, lookupBookCover } from "@/lib/artwork-lookup";

export type CreateAdaptationState = { error: string | null };

export async function createAdaptation(
  _prevState: CreateAdaptationState,
  formData: FormData
): Promise<CreateAdaptationState> {
  const parsed = parseAdaptationFormData(formData);
  if (parsed.error !== null) {
    return { error: parsed.error };
  }

  const values = parsed.values;

  // If the admin didn't paste image URLs directly, try to find them
  // automatically so new adaptations don't start out blank.
  const [autoPoster, autoCover] = await Promise.all([
    values.movie_poster_url
      ? Promise.resolve(values.movie_poster_url)
      : lookupMoviePoster(values.movie_title, values.movie_release_year),
    values.book_cover_url
      ? Promise.resolve(values.book_cover_url)
      : lookupBookCover(values.title, values.author),
  ]);
  values.movie_poster_url = autoPoster;
  values.book_cover_url = autoCover;

  const supabase = await requireAdmin();

  const { data, error } = await supabase
    .from("adaptations")
    .insert(values)
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
