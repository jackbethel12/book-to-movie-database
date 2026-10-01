-- ============================================================================
-- Fix duplicate: batch 13 re-added Gone Girl, which was already present in
-- supabase/seed.sql under a different id, because the duplicate-check only
-- scanned supabase/migrations/*.sql and missed seed.sql. This removes the
-- newly-created duplicate row and keeps the original seed row, which was
-- live first. difference_entries cascades on delete, so no separate cleanup
-- of those is needed.
--
-- Note: batch 12 (migration 0025) also re-added The Shining, Jurassic Park,
-- and The Hunger Games, which are likewise already in seed.sql -- but since
-- 0025 was never run against this database, those duplicates don't exist
-- here and don't need cleanup. If 0025 is run later, its three inserts will
-- need the same fix as this one.
-- ============================================================================

delete from adaptations where id = $q$4c61d501-a5f4-4936-ab29-00ccfaa8327a$q$::uuid; -- duplicate Gone Girl (batch 13)
