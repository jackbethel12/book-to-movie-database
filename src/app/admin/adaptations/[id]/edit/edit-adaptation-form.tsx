"use client";

import { AdaptationForm } from "@/components/adaptation-form";
import { updateAdaptation } from "./actions";
import type { Adaptation } from "@/lib/types";

export function EditAdaptationForm({ adaptation }: { adaptation: Adaptation }) {
  return (
    <AdaptationForm
      action={updateAdaptation.bind(null, adaptation.id)}
      defaultValues={adaptation}
      submitLabel="Save changes"
      pendingLabel="Saving…"
    />
  );
}
