"use server";

import { redirect } from "next/navigation";
import { revalidatePath } from "next/cache";
import { requireAdmin } from "@/lib/require-admin";
import { DIFFERENCE_CATEGORIES, type DifferenceCategory } from "@/lib/types";

export type UpdateEntryState = { error: string | null };

function isDifferenceCategory(value: string): value is DifferenceCategory {
  return (DIFFERENCE_CATEGORIES as readonly string[]).includes(value);
}

export async function updateEntry(
  entryId: string,
  _prevState: UpdateEntryState,
  formData: FormData
): Promise<UpdateEntryState> {
  const category = formData.get("category");
  const summary = formData.get("summary");
  const detail = formData.get("detail");

  if (typeof category !== "string" || !isDifferenceCategory(category)) {
    return { error: "Please choose a valid category." };
  }
  if (typeof summary !== "string" || summary.trim() === "") {
    return { error: "Summary can't be empty." };
  }

  const supabase = await requireAdmin();

  const { error } = await supabase
    .from("difference_entries")
    .update({
      category,
      summary: summary.trim(),
      detail: typeof detail === "string" && detail.trim() !== "" ? detail.trim() : null,
      spoiler_flag: formData.get("spoiler_flag") === "on",
    })
    .eq("id", entryId);

  if (error) {
    return {
      error: `Something went wrong saving these changes: ${error.message}`,
    };
  }

  revalidatePath("/admin");
  revalidatePath("/", "layout");
  redirect("/admin");
}
