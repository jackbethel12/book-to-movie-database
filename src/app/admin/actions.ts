"use server";

import { revalidatePath } from "next/cache";
import { requireAdmin } from "@/lib/require-admin";

export async function approveEntry(entryId: string) {
  const supabase = await requireAdmin();
  await supabase
    .from("difference_entries")
    .update({ status: "approved" })
    .eq("id", entryId);
  revalidatePath("/admin");
}

export async function rejectEntry(entryId: string) {
  const supabase = await requireAdmin();
  await supabase
    .from("difference_entries")
    .update({ status: "rejected" })
    .eq("id", entryId);
  revalidatePath("/admin");
}

export async function deleteEntry(entryId: string) {
  const supabase = await requireAdmin();
  await supabase.from("difference_entries").delete().eq("id", entryId);
  revalidatePath("/admin");
  revalidatePath("/", "layout");
}
