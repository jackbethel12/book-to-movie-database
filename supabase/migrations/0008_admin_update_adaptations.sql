-- ============================================================================
-- Let admins edit existing adaptations
-- ============================================================================
-- Needed so images (and any other field) can be added or fixed on
-- adaptations that already exist, not just brand-new ones.
-- ============================================================================

create policy "Admins can update adaptations"
  on adaptations for update
  using (
    exists (
      select 1 from profiles
      where profiles.id = auth.uid() and profiles.is_admin
    )
  );
