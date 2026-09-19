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

  return (
    <div className="min-h-full bg-[#C49A75]">
      <div className="mx-auto max-w-xl px-6 py-12">
      <div className="rounded-2xl bg-stone-50 p-6 shadow-xl sm:p-10 dark:bg-stone-900">
        <Link
          href={`/adaptations/${adaptation.id}`}
          className="text-sm font-medium text-stone-500 hover:text-stone-800 dark:text-stone-400 dark:hover:text-stone-200"
        >
          ← Back to {adaptation.title}
        </Link>

        <header className="mt-4 mb-8">
          <h1 className="text-3xl font-bold tracking-tight text-stone-900 dark:text-stone-50">
            Edit adaptation
          </h1>
        </header>

        <EditAdaptationForm adaptation={adaptation} />
      </div>
      </div>
    </div>
  );
}
