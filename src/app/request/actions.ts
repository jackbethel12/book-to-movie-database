"use server";

import { createClient } from "@/lib/supabase/server";
import { toNullableInt, toNullableString } from "@/lib/adaptation-form";

export type RequestState = { error: string | null; sent: boolean };

export async function submitAdaptationRequest(
  _prevState: RequestState,
  formData: FormData
): Promise<RequestState> {
  const title = toNullableString(formData.get("title"));
  const movieTitle = toNullableString(formData.get("movie_title"));
  const movieReleaseYear = toNullableInt(formData.get("movie_release_year"));

  if (!title) {
    return { error: "Please enter the book's title.", sent: false };
  }
  if (!movieTitle) {
    return { error: "Please enter the movie's title.", sent: false };
  }
  if (!movieReleaseYear) {
    return { error: "Please enter the movie's release year.", sent: false };
  }

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  const { error } = await supabase.from("adaptation_requests").insert({
    title,
    author: toNullableString(formData.get("author")),
    movie_title: movieTitle,
    movie_release_year: movieReleaseYear,
    notes: toNullableString(formData.get("notes")),
    submitted_by: user?.id ?? null,
  });

  if (error) {
    return {
      error: `Something went wrong sending your request: ${error.message}`,
      sent: false,
    };
  }

  return { error: null, sent: true };
}
