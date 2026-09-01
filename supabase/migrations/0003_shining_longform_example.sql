-- ============================================================================
-- Long-form example pass: The Shining
-- ============================================================================
-- Expands the existing terse Shining entries into full multi-paragraph
-- write-ups, and adds one new entry, as a demonstration of the depth/style
-- to aim for elsewhere. Safe to run once; updates match on the original
-- summary text.
-- ============================================================================

update difference_entries
set detail =
'In the novel, Jack has a moment of real clarity near the very end. The hotel loses its grip on him just long enough for him to warn his family to run, and while he ultimately dies, it reads as a kind of sacrifice rather than pure defeat. The Overlook itself is destroyed shortly after — its neglected boiler, which Jack was responsible for venting throughout the winter, finally explodes and burns the hotel to the ground.

The film ends very differently. Jack chases Danny into a hedge maze on the hotel grounds (an invention of the film — the book has no maze at all) and gets hopelessly lost, eventually freezing to death. The Overlook is left standing, untouched, and the film closes on an ambiguous black-and-white photograph from a 1921 hotel function that appears to show Jack among the guests.

The tonal effect is quite different. King''s ending is about a flawed man clawing back just enough of himself to protect his family, tying into his own reckoning with addiction. Kubrick''s ending offers no such redemption — it suggests something closer to eternal entrapment, with the photograph implying Jack was always somehow part of the hotel.'
where adaptation_id = '205715d7-cf7a-48b1-a654-d00a072ce1ee'
  and summary = 'The book and movie endings are completely different.';

update difference_entries
set detail =
'The novel spends real time establishing Jack as a sympathetic, if deeply flawed, man. He''s a former teacher and aspiring writer with a genuine drinking problem, haunted by a past incident where he broke Danny''s arm in a drunken rage. Across the book, he is shown actively trying to be better — the Overlook''s influence works on him gradually, exploiting his guilt, his resentments, and his isolation over the course of the winter.

Jack Nicholson''s performance, and Kubrick''s direction, take a different approach. From his very first scene — the job interview at the hotel — there''s an unsettling edge to him that makes his later violence feel less like a slow corruption and more like something that was always just under the surface, waiting to come out.

This is one of the more widely discussed changes among fans of the book: many feel the film trades King''s tragic arc of a man losing a fight he was genuinely having for a more straightforwardly menacing character. King himself was famously unhappy with Kubrick''s interpretation of Jack, which was part of what led him to help produce a more book-faithful 1997 TV miniseries adaptation years later.'
where adaptation_id = '205715d7-cf7a-48b1-a654-d00a072ce1ee'
  and summary = 'Book Jack is more sympathetic and his descent is more gradual.';

update difference_entries
set detail =
'In King''s novel, the hotel''s grounds feature topiary hedges trimmed into animal shapes — a lion, a dog, rabbits — that appear to move and stalk Danny when he isn''t looking directly at them. It''s a creeping, always-slightly-uncertain kind of horror rather than a physical chase.

The film replaces this with a large hedge maze, which doesn''t exist in the book at all. It was likely a practical choice as much as a creative one — animating topiary animals convincingly was extremely difficult with the effects available at the time — and it gives the climax a literal, navigable space for Jack to chase Danny through.

The famous "Here''s Johnny!" line, delivered as Jack axes through a door, has no equivalent in the book either. It was reportedly improvised on set by Jack Nicholson, referencing Johnny Carson''s Tonight Show intro, and has since become one of the most quoted ad-libbed lines in film history — despite not being written by Stephen King at all.'
where adaptation_id = '205715d7-cf7a-48b1-a654-d00a072ce1ee'
  and summary = 'The topiary animals become a hedge maze, and "Here''s Johnny!" was improvised.';

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values
  (
    '205715d7-cf7a-48b1-a654-d00a072ce1ee'::uuid,
    'Setting',
    'The hotel''s violent history is explained in detail in the book, but left vague in the film.',
    'King devotes considerable space to the Overlook''s backstory — a documented history of past owners, organized-crime connections, and prior deaths that Jack digs up himself while researching the hotel''s scrapbooks. By the time the horror escalates, the reader has a fairly clear, almost journalistic understanding of exactly why the hotel is malevolent.

The film keeps almost none of this. Beyond a passing reference to the hotel being built on a Native American burial ground and a few lines from the manager during the interview, Kubrick offers very little concrete explanation. Instead, the sense of wrongness is carried almost entirely through visual and sound design — the hotel''s geometrically impossible hallways, unsettling symmetry, and ambient dread — rather than through exposition.',
    false,
    'approved'
  )
) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries d
  where d.adaptation_id = v.adaptation_id and d.summary = v.summary
);
