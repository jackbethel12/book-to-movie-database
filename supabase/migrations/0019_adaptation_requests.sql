-- ============================================================================
-- Let visitors request a new adaptation be added
-- ============================================================================
-- A lightweight companion to difference_entries' moderation queue, but for
-- "this book/movie isn't in the database yet" requests instead of
-- differences on an existing one. Anyone can submit one; only admins can
-- see or clear the queue. There's no "approved" state to track here — once
-- an admin acts on a request (adds the adaptation, or decides not to),
-- they just delete it, the same way approved difference entries get
-- cleaned up.
-- ============================================================================

create table if not exists adaptation_requests (
  id uuid primary key default gen_random_uuid(),
  title text not null,                 -- book title
  author text,
  movie_title text not null,
  movie_release_year integer not null,
  notes text,                          -- optional: what's different, why it should be added, etc.
  submitted_by uuid references profiles(id) on delete set null,
  created_at timestamptz not null default now()
);

alter table adaptation_requests enable row level security;

create policy "Public can submit adaptation requests"
  on adaptation_requests for insert
  with check (true);

create policy "Admins can view adaptation requests"
  on adaptation_requests for select
  using (
    exists (
      select 1 from profiles
      where profiles.id = auth.uid() and profiles.is_admin
    )
  );

create policy "Admins can delete adaptation requests"
  on adaptation_requests for delete
  using (
    exists (
      select 1 from profiles
      where profiles.id = auth.uid() and profiles.is_admin
    )
  );
