-- ============================================================================
-- Voting on difference entries
-- ============================================================================
-- Tracks one vote per (person, entry) so someone can't stack the count by
-- clicking repeatedly, and so clicking again removes/changes their vote.
-- A trigger keeps difference_entries.upvotes/downvotes in sync automatically
-- whenever a vote is added, changed, or removed.
-- ============================================================================

create table if not exists entry_votes (
  id uuid primary key default gen_random_uuid(),
  entry_id uuid not null references difference_entries(id) on delete cascade,
  user_id uuid not null references auth.users(id) on delete cascade,
  vote_type text not null check (vote_type in ('up', 'down')),
  created_at timestamptz not null default now(),
  unique (entry_id, user_id)
);

alter table entry_votes enable row level security;

-- People can see and manage only their own votes (needed so the app can
-- show "you upvoted this" and let them change their mind).
create policy "Users can view their own votes"
  on entry_votes for select
  using (auth.uid() = user_id);

create policy "Users can cast their own votes"
  on entry_votes for insert
  with check (auth.uid() = user_id);

create policy "Users can change their own votes"
  on entry_votes for update
  using (auth.uid() = user_id);

create policy "Users can remove their own votes"
  on entry_votes for delete
  using (auth.uid() = user_id);

-- Keeps the fast, denormalized upvotes/downvotes counters on
-- difference_entries correct without every page having to count votes.
create or replace function public.apply_vote_change()
returns trigger as $$
begin
  if TG_OP = 'INSERT' then
    if new.vote_type = 'up' then
      update difference_entries set upvotes = upvotes + 1 where id = new.entry_id;
    else
      update difference_entries set downvotes = downvotes + 1 where id = new.entry_id;
    end if;
  elsif TG_OP = 'UPDATE' then
    if old.vote_type is distinct from new.vote_type then
      if new.vote_type = 'up' then
        update difference_entries set upvotes = upvotes + 1, downvotes = downvotes - 1 where id = new.entry_id;
      else
        update difference_entries set downvotes = downvotes + 1, upvotes = upvotes - 1 where id = new.entry_id;
      end if;
    end if;
  elsif TG_OP = 'DELETE' then
    if old.vote_type = 'up' then
      update difference_entries set upvotes = upvotes - 1 where id = old.entry_id;
    else
      update difference_entries set downvotes = downvotes - 1 where id = old.entry_id;
    end if;
  end if;
  return null;
end;
$$ language plpgsql security definer set search_path = public;

drop trigger if exists on_entry_vote_change on entry_votes;
create trigger on_entry_vote_change
  after insert or update or delete on entry_votes
  for each row execute procedure public.apply_vote_change();
