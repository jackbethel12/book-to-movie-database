"use client";

import { AdaptationForm } from "@/components/adaptation-form";
import { createAdaptation } from "./actions";

export function NewAdaptationForm({
  defaultValues,
}: {
  defaultValues?: {
    title?: string;
    author?: string;
    movie_title?: string;
    movie_release_year?: number;
  };
}) {
  return (
    <AdaptationForm
      action={createAdaptation}
      defaultValues={defaultValues}
      submitLabel="Add adaptation"
      pendingLabel="Saving…"
    />
  );
}
