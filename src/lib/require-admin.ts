import { createClient } from "@/lib/supabase/server";

// Shared by every admin-only Server Action. Re-checks admin status on the
// server against the database itself — never trust that a button was
// merely hidden from non-admins in the UI.
export async function requireAdmin() {
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
