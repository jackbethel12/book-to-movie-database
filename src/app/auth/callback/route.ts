import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

// This is where the link in the login email points. Supabase attaches a
// one-time "code" to the URL; we trade it for a real logged-in session,
// then send the visitor on to wherever they were headed (home, by default).
export async function GET(request: Request) {
  const { searchParams, origin } = new URL(request.url);
  const code = searchParams.get("code");
  const next = searchParams.get("next") ?? "/";

  if (code) {
    const supabase = await createClient();
    const { error } = await supabase.auth.exchangeCodeForSession(code);
    if (!error) {
      return NextResponse.redirect(`${origin}${next}`);
    }
  }

  return NextResponse.redirect(`${origin}/login?error=auth`);
}
