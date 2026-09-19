-- ============================================================================
-- Let admins add new adaptations directly
-- ============================================================================
-- Previously nobody could insert into adaptations at all (only the public
-- read policy existed). This lets an admin add a new book/movie pair
-- through an in-app form instead of needing SQL each time.
-- ============================================================================

create policy "Admins can insert adaptations"
  on adaptations for insert
  with check (
    exists (
      select 1 from profiles
      where profiles.id = auth.uid() and profiles.is_admin
    )
  );
