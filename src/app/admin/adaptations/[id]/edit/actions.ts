"use server";

import { redirect } from "next/navigation";
import { revalidatePath } from "next/cache";
import { requireAdmin } from "@/lib/require-admin";
import { parseAdaptationFormData } from "@/lib/adaptation-form";

export type UpdateAdaptationState = { error: string | null };

export async function updateAdaptation(
  adaptationId: string,
  _prevState: UpdateAdaptationState,
  formData: FormData
): Promise<UpdateAdaptationState> {
  const parsed = parseAdaptationFormData(formData);
  if (parsed.error !== null) {
    return { error: parsed.error };
  }

  const supabase = await requireAdmin();

  const { error } = await supabase
    .from("adaptations")
    .update(parsed.values)
    .eq("id", adaptationId);

  if (error) {
    return {
      error: `Something went wrong saving these changes: ${error.message}`,
    };
  }

  revalidatePath("/", "layout");
  redirect(`/adaptations/${adaptationId}`);
}
