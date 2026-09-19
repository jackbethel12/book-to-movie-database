import { redirect, notFound } from "next/navigation";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import type { Adaptation } from "@/lib/types";
import { EditAdaptationForm } from "./edit-adaptation-form";

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
    <div className="min-h-full bg-zinc-50 dark:bg-black">
      <div className="mx-auto max-w-xl px-6 py-12">
        <Link
          href={`/adaptations/${adaptation.id}`}
          className="text-sm font-medium text-zinc-500 hover:text-zinc-800 dark:text-zinc-400 dark:hover:text-zinc-200"
        >
          ← Back to {adaptation.title}
        </Link>

        <header className="mt-4 mb-8">
          <h1 className="text-3xl font-bold tracking-tight text-zinc-900 dark:text-zinc-50">
            Edit adaptation
          </h1>
        </header>

        <EditAdaptationForm adaptation={adaptation} />
      </div>
    </div>
  );
}
