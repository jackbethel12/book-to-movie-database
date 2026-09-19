"use client";

import { AdaptationForm } from "@/components/adaptation-form";
import { createAdaptation } from "./actions";

export function NewAdaptationForm() {
  return (
    <AdaptationForm
      action={createAdaptation}
      submitLabel="Add adaptation"
      pendingLabel="Saving…"
    />
  );
}
