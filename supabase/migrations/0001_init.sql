-- ============================================================================
-- Book vs. Movie Database — initial schema
-- ============================================================================
-- This file creates the 3 core tables from the spec: adaptations,
-- difference_entries, and profiles (user info). Run this once in the
-- Supabase SQL Editor to set up the database.
-- ============================================================================

-- Make sure the function that generates random unique IDs is available.
create extension if not exists pgcrypto;

-- ----------------------------------------------------------------------------
-- 1. adaptations — one row per book/movie pair
-- ----------------------------------------------------------------------------
create table if not exists adaptations (
  id uuid primary key default gen_random_uuid(),
  title text not null,                 -- book title
  author text,
  book_publish_year integer,
  movie_title text,                    -- can differ from book title
  director text,
  movie_release_year integer,
  genres text[] not null default '{}',
  book_cover_url text,
  movie_poster_url text,
  goodreads_id text,
  imdb_id text,
  created_at timestamptz not null default now()
);

-- ----------------------------------------------------------------------------
-- 2. profiles — extra info about each signed-up user
-- ----------------------------------------------------------------------------
-- Supabase's built-in login system already stores each user's account in a
-- separate table it manages (auth.users), including their email. This
-- "profiles" table holds the extra, app-specific info the spec asks for
-- (username, submission count) and is linked 1-to-1 to that built-in table.
create table if not exists profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  username text unique,
  submission_count integer not null default 0,
  created_at timestamptz not null default now()
);

-- Automatically create a profile row whenever someone signs up, so we never
-- have to remember to do it manually once login is added in a later step.
create or replace function public.handle_new_user()
returns trigger as $$
begin
  insert into public.profiles (id, username)
  values (new.id, coalesce(new.raw_user_meta_data->>'username', split_part(new.email, '@', 1)));
  return new;
end;
$$ language plpgsql security definer set search_path = public;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();

-- ----------------------------------------------------------------------------
-- 3. difference_entries — crowdsourced "what changed" submissions
-- ----------------------------------------------------------------------------
create table if not exists difference_entries (
  id uuid primary key default gen_random_uuid(),
  adaptation_id uuid not null references adaptations(id) on delete cascade,
  category text not null check (category in (
    'Plot', 'Ending', 'Character', 'Setting', 'Theme/Tone',
    'Timeline', 'Omitted Content', 'Added Content'
  )),
  summary text not null,
  detail text,
  spoiler_flag boolean not null default false,
  submitted_by uuid references profiles(id) on delete set null,
  upvotes integer not null default 0,
  downvotes integer not null default 0,
  status text not null default 'pending' check (status in ('pending', 'approved', 'rejected')),
  created_at timestamptz not null default now()
);

create index if not exists difference_entries_adaptation_id_idx on difference_entries (adaptation_id);
create index if not exists difference_entries_status_idx on difference_entries (status);

-- ----------------------------------------------------------------------------
-- Privacy / access rules ("Row Level Security")
-- ----------------------------------------------------------------------------
-- By default we lock every table down completely, then open narrow, specific
-- doors for exactly what the public website needs to do. Think of it as:
-- "nobody can touch anything unless a rule below explicitly allows it."
alter table adaptations enable row level security;
alter table profiles enable row level security;
alter table difference_entries enable row level security;

-- Anyone (including logged-out visitors) can browse the list of adaptations.
create policy "Public can view adaptations"
  on adaptations for select
  using (true);

-- Anyone can view difference entries that have been approved by a moderator.
-- Pending/rejected entries stay invisible to the public.
create policy "Public can view approved difference entries"
  on difference_entries for select
  using (status = 'approved');

-- Anyone can submit a new difference entry (per the spec, submissions work
-- before login is added). New rows are forced to start as "pending" so
-- nothing appears publicly until a moderator approves it.
create policy "Public can submit difference entries"
  on difference_entries for insert
  with check (status = 'pending');

-- Anyone can view public profile info (username + submission count).
create policy "Public can view profiles"
  on profiles for select
  using (true);

-- A logged-in user can only create or update their own profile row.
create policy "Users manage their own profile"
  on profiles for insert
  with check (auth.uid() = id);

create policy "Users update their own profile"
  on profiles for update
  using (auth.uid() = id);
