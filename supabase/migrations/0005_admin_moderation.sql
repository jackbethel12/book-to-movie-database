-- ============================================================================
-- Admin moderation access
-- ============================================================================
-- Adds an is_admin flag to profiles, and lets admins see and update every
-- difference entry (not just approved ones) so a moderation queue can work.
-- ============================================================================

alter table profiles add column if not exists is_admin boolean not null default false;

-- Admins can see pending/rejected entries too, not just approved ones.
create policy "Admins can view all difference entries"
  on difference_entries for select
  using (
    exists (
      select 1 from profiles
      where profiles.id = auth.uid() and profiles.is_admin
    )
  );

-- Admins can approve/reject submissions.
create policy "Admins can update difference entries"
  on difference_entries for update
  using (
    exists (
      select 1 from profiles
      where profiles.id = auth.uid() and profiles.is_admin
    )
  );
