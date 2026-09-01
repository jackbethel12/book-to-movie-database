-- ============================================================================
-- Auto-track each user's submission count
-- ============================================================================
-- Whenever a logged-in user submits a difference entry, bump their
-- profiles.submission_count by 1. Runs as a database trigger so it can't
-- be skipped or done twice by accident.
-- ============================================================================

create or replace function public.increment_submission_count()
returns trigger as $$
begin
  if new.submitted_by is not null then
    update public.profiles
    set submission_count = submission_count + 1
    where id = new.submitted_by;
  end if;
  return new;
end;
$$ language plpgsql security definer set search_path = public;

drop trigger if exists on_difference_entry_created on difference_entries;
create trigger on_difference_entry_created
  after insert on difference_entries
  for each row execute procedure public.increment_submission_count();
