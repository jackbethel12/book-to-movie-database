"use server";

import { redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { DIFFERENCE_CATEGORIES, type DifferenceCategory } from "@/lib/types";

export type SubmitState = { error: string | null };

// This runs on the server whenever the submission form below is submitted.
// It's a Next.js "Server Action" — the browser sends the form fields here
// directly, with no separate API endpoint to build or wire up ourselves.
export async function submitDifference(
  _prevState: SubmitState,
  formData: FormData
): Promise<SubmitState> {
  const adaptationId = formData.get("adaptation_id");
  const category = formData.get("category");
  const summary = formData.get("summary");
  const detail = formData.get("detail");
  const spoilerFlag = formData.get("spoiler_flag") === "on";

  if (typeof adaptationId !== "string" || !adaptationId) {
    return { error: "Please choose which adaptation this is about." };
  }
  if (
    typeof category !== "string" ||
    !DIFFERENCE_CATEGORIES.includes(category as DifferenceCategory)
  ) {
    return { error: "Please choose a category." };
  }
  if (typeof summary !== "string" || summary.trim().length < 5) {
    return { error: "Please write a short summary (at least 5 characters)." };
  }

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  // status is always forced to "pending" here — it only becomes visible on
  // the site once approved through the moderation queue (a later step).
  // submitted_by is only set when someone is logged in; anonymous
  // submissions are still allowed, they just won't count toward anyone's
  // submission total.
  const { error } = await supabase.from("difference_entries").insert({
    adaptation_id: adaptationId,
    category,
    summary: summary.trim(),
    detail: typeof detail === "string" && detail.trim() ? detail.trim() : null,
    spoiler_flag: spoilerFlag,
    status: "pending",
    submitted_by: user?.id ?? null,
  });

  if (error) {
    return { error: `Something went wrong saving your submission: ${error.message}` };
  }

  redirect(`/adaptations/${adaptationId}?submitted=1`);
}
