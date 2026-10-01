-- ============================================================================
-- Fix duplicates: batches 12 and 13 re-added four titles that were already
-- present in supabase/seed.sql (The Shining, Jurassic Park, The Hunger
-- Games, Gone Girl) under brand new ids, because the duplicate-check only
-- scanned supabase/migrations/*.sql and missed seed.sql. This removes the
-- newly-created duplicate rows and keeps the original seed rows, which were
-- live first. difference_entries cascades on delete, so no separate cleanup
-- of those is needed.
-- ============================================================================

delete from adaptations where id in (
  $q$62f0bee4-7930-4c7a-a7ba-c6abbf9222b2$q$::uuid, -- duplicate The Shining (batch 12)
  $q$034ff2e0-cd52-41fb-9faf-a34550c0c9e8$q$::uuid, -- duplicate Jurassic Park (batch 12)
  $q$a0d3fa92-425f-4385-b1f9-b9cd2fa4ebf3$q$::uuid, -- duplicate The Hunger Games (batch 12)
  $q$4c61d501-a5f4-4936-ab29-00ccfaa8327a$q$::uuid  -- duplicate Gone Girl (batch 13)
);
