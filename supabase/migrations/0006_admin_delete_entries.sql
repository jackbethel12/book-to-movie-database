-- ============================================================================
-- Let admins delete difference entries
-- ============================================================================
-- Needed so an admin can remove a test/mistaken/spam entry after it's
-- already been approved (the moderation queue only handles pending ones).
-- ============================================================================

create policy "Admins can delete difference entries"
  on difference_entries for delete
  using (
    exists (
      select 1 from profiles
      where profiles.id = auth.uid() and profiles.is_admin
    )
  );
