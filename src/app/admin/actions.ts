"use server";

import { revalidatePath } from "next/cache";
import { createClient } from "@/lib/supabase/server";

// Every action here re-checks that the caller is actually an admin, on the
// server, using the database's own record of who's an admin — not just
// whether the "Approve" button happened to be visible to them. This is what
// actually stops someone from approving entries by guessing the URL or
// calling the action directly.
async function requireAdmin() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    throw new Error("You must be logged in.");
  }

  const { data: profile } = await supabase
    .from("profiles")
    .select("is_admin")
    .eq("id", user.id)
    .single();

  if (!profile?.is_admin) {
    throw new Error("You're not authorized to do that.");
  }

  return supabase;
}

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
