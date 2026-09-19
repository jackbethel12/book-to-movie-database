"use server";

import { revalidatePath } from "next/cache";
import { createClient } from "@/lib/supabase/server";
import type { VoteType } from "@/lib/types";

// Clicking an arrow you haven't clicked before casts that vote. Clicking
// the same arrow again removes your vote. Clicking the other arrow swaps
// it. One vote per person per entry — enforced by a unique constraint in
// the database, not just by this code.
export async function castVote(
  entryId: string,
  adaptationId: string,
  voteType: VoteType
) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  // The vote buttons are only shown to logged-in visitors, but this guards
  // the action itself in case it's ever called directly.
  if (!user) {
    return;
  }

  const { data: existing } = await supabase
    .from("entry_votes")
    .select("id, vote_type")
    .eq("entry_id", entryId)
    .eq("user_id", user.id)
    .maybeSingle();

  if (!existing) {
    await supabase.from("entry_votes").insert({
      entry_id: entryId,
      user_id: user.id,
      vote_type: voteType,
    });
  } else if (existing.vote_type === voteType) {
    await supabase.from("entry_votes").delete().eq("id", existing.id);
  } else {
    await supabase
      .from("entry_votes")
      .update({ vote_type: voteType })
      .eq("id", existing.id);
  }

  revalidatePath(`/adaptations/${adaptationId}`);
}
