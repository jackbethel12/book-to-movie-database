-- ============================================================================
-- Book vs. Movie Database — example seed data
-- ============================================================================
-- This adds a handful of well-known adaptations with a few real difference
-- entries each, so the site has content to look at while more are added.
-- Safe to run more than once — rows that already exist are skipped, so
-- re-running this won't create duplicates.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres)
values
  ('9fb27472-835f-4935-a80c-100bef23e037', 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 1997, 'Harry Potter and the Sorcerer''s Stone', 'Chris Columbus', 2001, array['Fantasy', 'Young Adult']),
  ('e08eb5a9-e483-4434-9eb1-8ba8874bf6f7', 'The Fellowship of the Ring', 'J.R.R. Tolkien', 1954, 'The Lord of the Rings: The Fellowship of the Ring', 'Peter Jackson', 2001, array['Fantasy', 'Adventure']),
  ('205715d7-cf7a-48b1-a654-d00a072ce1ee', 'The Shining', 'Stephen King', 1977, 'The Shining', 'Stanley Kubrick', 1980, array['Horror']),
  ('7ac48b57-8ddd-4545-a9ac-76bafbe03988', 'Jurassic Park', 'Michael Crichton', 1990, 'Jurassic Park', 'Steven Spielberg', 1993, array['Science Fiction', 'Adventure']),
  ('41039f5e-8e35-4169-884e-126b77ed6d39', 'The Hunger Games', 'Suzanne Collins', 2008, 'The Hunger Games', 'Gary Ross', 2012, array['Dystopian', 'Young Adult']),
  ('1f266fa2-f740-4988-a012-38cb0200590b', 'Gone Girl', 'Gillian Flynn', 2012, 'Gone Girl', 'David Fincher', 2014, array['Thriller', 'Mystery'])
on conflict (id) do nothing;

-- difference_entries rows don't have fixed IDs (a real submission form
-- wouldn't set one either), so "already exists" here is checked by matching
-- on adaptation + summary text instead, via the "where not exists" below.
insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values
  -- Harry Potter and the Sorcerer's Stone
  ('9fb27472-835f-4935-a80c-100bef23e037'::uuid, 'Omitted Content', 'Peeves the Poltergeist never appears in the films.', 'Peeves is a recurring troublemaker throughout the books but was cut from the entire film series.', false, 'approved'),
  ('9fb27472-835f-4935-a80c-100bef23e037'::uuid, 'Character', 'Harry''s eyes are the wrong color.', 'In the books Harry has his mother Lily''s bright green eyes, a detail several characters remark on. Daniel Radcliffe has blue eyes, and the films never correct this with contacts.', false, 'approved'),
  ('9fb27472-835f-4935-a80c-100bef23e037'::uuid, 'Plot', 'The Mirror of Erised and Quidditch rules get much less explanation on screen.', 'The book spends significant time on how the Mirror works and the finer points of Quidditch; the film streamlines both considerably.', false, 'approved'),

  -- The Fellowship of the Ring
  ('e08eb5a9-e483-4434-9eb1-8ba8874bf6f7'::uuid, 'Omitted Content', 'Tom Bombadil is entirely absent from the film.', 'The mysterious, song-loving Tom Bombadil, who shelters the hobbits in the Old Forest, is cut completely from Peter Jackson''s trilogy.', false, 'approved'),
  ('e08eb5a9-e483-4434-9eb1-8ba8874bf6f7'::uuid, 'Character', 'Arwen takes over Glorfindel''s role.', 'In the book, the elf-lord Glorfindel rescues Frodo and races him to the Ford of Bruinen. The film gives this role to Arwen instead.', false, 'approved'),
  ('e08eb5a9-e483-4434-9eb1-8ba8874bf6f7'::uuid, 'Timeline', 'The 17-year gap between Bilbo''s party and Frodo leaving the Shire is compressed.', 'The novel has Frodo linger in the Shire for years after inheriting the Ring; the film has him leave almost immediately.', false, 'approved'),

  -- The Shining
  ('205715d7-cf7a-48b1-a654-d00a072ce1ee'::uuid, 'Ending', 'The book and movie endings are completely different.', 'In the novel, Jack has a moment of clarity and the hotel explodes after its boiler is neglected. In the film, Jack freezes to death lost in a hedge maze, which doesn''t exist in the book, and the hotel is left standing.', true, 'approved'),
  ('205715d7-cf7a-48b1-a654-d00a072ce1ee'::uuid, 'Character', 'Book Jack is more sympathetic and his descent is more gradual.', 'King''s novel ties Jack''s breakdown closely to alcoholism and a slower psychological unraveling. Kubrick''s film (with Jack Nicholson) portrays him as unstable almost from the beginning.', false, 'approved'),
  ('205715d7-cf7a-48b1-a654-d00a072ce1ee'::uuid, 'Added Content', 'The topiary animals become a hedge maze, and "Here''s Johnny!" was improvised.', 'The book features hedges trimmed into animal shapes that come alive; the film replaces them with a hedge maze. The famous line was ad-libbed by Jack Nicholson and isn''t in the book.', false, 'approved'),

  -- Jurassic Park
  ('7ac48b57-8ddd-4545-a9ac-76bafbe03988'::uuid, 'Character', 'John Hammond is much more ruthless in the book.', 'Book Hammond is a morally ambiguous businessman who ultimately dies, eaten by a swarm of Compsognathus. The film softens him into a well-meaning grandfather figure who survives.', true, 'approved'),
  ('7ac48b57-8ddd-4545-a9ac-76bafbe03988'::uuid, 'Ending', 'The book ends with the island being bombed by the military; the film doesn''t.', 'In the novel, the Costa Rican air force firebombs the island to destroy the dinosaurs. The film ends with the survivors simply flying away, leaving the island''s fate open.', true, 'approved'),
  ('7ac48b57-8ddd-4545-a9ac-76bafbe03988'::uuid, 'Omitted Content', 'PR man Ed Regis is cut, and his death is given to a different character.', 'The book''s cowardly publicist Ed Regis is abandoned and eaten by a T. rex. The film omits him and gives a similar fate instead to lawyer Donald Gennaro, who actually survives in the book.', true, 'approved'),

  -- The Hunger Games
  ('41039f5e-8e35-4169-884e-126b77ed6d39'::uuid, 'Theme/Tone', 'The book''s first-person, present-tense narration can''t translate directly to film.', 'Being locked entirely inside Katniss''s head in the books creates a very different, more claustrophobic tone than the film, which cuts away to show the Capitol and Gamemakers.', false, 'approved'),
  ('41039f5e-8e35-4169-884e-126b77ed6d39'::uuid, 'Added Content', 'Scenes in the Gamemaker control room and with President Snow are new to the film.', 'Because the books are told entirely from Katniss''s point of view, readers never see these behind-the-scenes moments, which the film adds to show the Capitol''s perspective.', false, 'approved'),
  ('41039f5e-8e35-4169-884e-126b77ed6d39'::uuid, 'Character', 'Madge Undersee is cut from the films.', 'The mayor''s daughter, who gives Katniss the mockingjay pin in the book, doesn''t appear in the movies; the pin''s origin is changed instead.', false, 'approved'),

  -- Gone Girl
  ('1f266fa2-f740-4988-a012-38cb0200590b'::uuid, 'Omitted Content', 'Some of Amy''s "Amazing Amy" backstory is trimmed.', 'The novel spends more time on Amy''s childhood as the inspiration for her parents'' book series; the film keeps the concept but trims a lot of the detail for pacing.', false, 'approved'),
  ('1f266fa2-f740-4988-a012-38cb0200590b'::uuid, 'Plot', 'The film is unusually faithful overall.', 'Gillian Flynn wrote the screenplay herself, so the adaptation stays very close to the book''s structure and twists, with only minor trims for pacing.', false, 'approved')
) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries d
  where d.adaptation_id = v.adaptation_id and d.summary = v.summary
);
