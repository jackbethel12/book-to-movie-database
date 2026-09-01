"use server";

import { headers } from "next/headers";
import { createClient } from "@/lib/supabase/server";

export type MagicLinkState = { error: string | null; sent: boolean };

// Sends a "click to log in" email — no password involved. The link takes
// the visitor to /auth/callback, which finishes logging them in.
export async function sendMagicLink(
  _prevState: MagicLinkState,
  formData: FormData
): Promise<MagicLinkState> {
  const email = formData.get("email");
  if (typeof email !== "string" || !email) {
    return { error: "Please enter a valid email address.", sent: false };
  }

  const headersList = await headers();
  const origin =
    headersList.get("origin") || `https://${headersList.get("host")}`;

  const supabase = await createClient();
  const { error } = await supabase.auth.signInWithOtp({
    email,
    options: {
      emailRedirectTo: `${origin}/auth/callback`,
    },
  });

  if (error) {
    return { error: error.message, sent: false };
  }

  return { error: null, sent: true };
}
