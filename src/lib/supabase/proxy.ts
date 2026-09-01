import { createServerClient } from "@supabase/ssr";
import { NextResponse, type NextRequest } from "next/server";

// Runs on (almost) every request. Its one job is to keep the Supabase login
// session fresh — login tokens expire periodically, and this refreshes them
// automatically so visitors don't get silently logged out. See src/proxy.ts,
// which is what Next.js actually calls (Next.js 16 renamed "middleware" to
// "proxy" — this file just holds the Supabase-specific logic).
export async function updateSession(request: NextRequest) {
  let supabaseResponse = NextResponse.next({ request });

  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    {
      cookies: {
        getAll() {
          return request.cookies.getAll();
        },
        setAll(cookiesToSet) {
          cookiesToSet.forEach(({ name, value }) =>
            request.cookies.set(name, value)
          );
          supabaseResponse = NextResponse.next({ request });
          cookiesToSet.forEach(({ name, value, options }) =>
            supabaseResponse.cookies.set(name, value, options)
          );
        },
      },
    }
  );

  // Touching the session here is what actually triggers the refresh.
  await supabase.auth.getUser();

  return supabaseResponse;
}
