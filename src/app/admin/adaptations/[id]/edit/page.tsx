import type { Metadata } from "next";
import { redirect, notFound } from "next/navigation";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import type { Adaptation } from "@/lib/types";
import { EditAdaptationForm } from "./edit-adaptation-form";

export const metadata: Metadata = {
  title: "Edit adaptation",
};

export default async function EditAdaptationPage({
  params,
}: PageProps<"/admin/adaptations/[id]/edit">) {
  const { id } = await params;
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    redirect("/login");
  }

  const { data: profile } = await supabase
    .from("profiles")
    .select("is_admin")
    .eq("id", user.id)
    .single();

  if (!profile?.is_admin) {
    redirect("/");
  }

  const { data: adaptation } = await supabase
    .from("adaptations")
    .select("*")
    .eq("id", id)
    .single<Adaptation>();

  if (!adaptation) {
    notFound();
  }

  const thumbnail = adaptation.movie_poster_url ?? adaptation.book_cover_url;

  return (
    <div className="relative mx-auto max-w-2xl px-6 py-14">
      <div
        className="pointer-events-none absolute top-8 right-[-6rem] -z-10 h-64 w-64 rounded-full bg-accent/10 blur-3xl"
        aria-hidden
      />

      <Link
        href={`/adaptations/${adaptation.id}`}
        className="animate-fade-up text-sm font-medium text-stone-500 hover:text-stone-800 dark:text-stone-400 dark:hover:text-stone-200"
      >
        ← Back to {adaptation.title}
      </Link>

      <header
        className="animate-fade-up mt-4 mb-8 flex items-center gap-4"
        style={{ animationDelay: "60ms" }}
      >
        {thumbnail && (
          // eslint-disable-next-line @next/next/no-img-element -- covers/posters are pasted from arbitrary external sites, so next/image's fixed domain allowlist doesn't fit here.
          <img
            src={thumbnail}
            alt=""
            className="h-16 w-11 shrink-0 rounded-md object-cover shadow-md"
          />
        )}
        <div>
          <span className="text-xs font-semibold tracking-[0.2em] text-accent uppercase">
            Admin
          </span>
          <h1 className="mt-1 font-serif text-3xl font-semibold tracking-tight text-stone-900 dark:text-stone-50">
            Edit adaptation
          </h1>
        </div>
      </header>

      <div
        className="animate-fade-up rounded-2xl border border-stone-900/10 bg-elevated p-6 shadow-sm sm:p-8 dark:border-stone-100/10 dark:bg-stone-900"
        style={{ animationDelay: "120ms" }}
      >
        <EditAdaptationForm adaptation={adaptation} />
      </div>
    </div>
  );
}
