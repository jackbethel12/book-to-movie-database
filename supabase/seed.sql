-- ============================================================================
-- Book vs. Movie Database — example seed data
-- ============================================================================
-- This adds a handful of well-known adaptations with a few real difference
-- entries each, so the site has content to look at while more are added.
-- Safe to run more than once — rows that already exist are skipped, so
-- re-running this won't create duplicates.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis)
values
  ('9fb27472-835f-4935-a80c-100bef23e037', 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 1997, 'Harry Potter and the Sorcerer''s Stone', 'Chris Columbus', 2001, array['Fantasy', 'Young Adult'], 'An orphaned boy discovers on his eleventh birthday that he''s a wizard, and is whisked away to Hogwarts School of Witchcraft and Wizardry. There, alongside new friends Ron and Hermione, he begins to unravel the mystery of his parents'' deaths and the return of a dark wizard everyone is too afraid to name.'),
  ('e08eb5a9-e483-4434-9eb1-8ba8874bf6f7', 'The Fellowship of the Ring', 'J.R.R. Tolkien', 1954, 'The Lord of the Rings: The Fellowship of the Ring', 'Peter Jackson', 2001, array['Fantasy', 'Adventure'], 'A young hobbit named Frodo inherits a magic ring that turns out to be the key to the Dark Lord Sauron''s power. Along with eight companions, he sets out from the peaceful Shire on a perilous journey to destroy the ring before it falls into the wrong hands.'),
  ('205715d7-cf7a-48b1-a654-d00a072ce1ee', 'The Shining', 'Stephen King', 1977, 'The Shining', 'Stanley Kubrick', 1980, array['Horror'], 'A recovering alcoholic takes a job as the off-season caretaker of a remote, historic hotel, moving in with his wife and young son for the winter. As the family settles into the empty building, the hotel''s dark past begins to seep into the present.'),
  ('7ac48b57-8ddd-4545-a9ac-76bafbe03988', 'Jurassic Park', 'Michael Crichton', 1990, 'Jurassic Park', 'Steven Spielberg', 1993, array['Science Fiction', 'Adventure'], 'A billionaire opens a theme park populated with cloned dinosaurs brought back from extinction through genetic engineering. When the park''s security systems fail during a visit from a group of scientists and the owner''s grandchildren, the dinosaurs get loose.'),
  ('41039f5e-8e35-4169-884e-126b77ed6d39', 'The Hunger Games', 'Suzanne Collins', 2008, 'The Hunger Games', 'Gary Ross', 2012, array['Dystopian', 'Young Adult'], 'In a dystopian future, a teenage girl volunteers to take her younger sister''s place in a televised fight to the death between children from each of the country''s twelve districts. She must survive both the arena and the politics of the spectacle surrounding it.'),
  ('1f266fa2-f740-4988-a012-38cb0200590b', 'Gone Girl', 'Gillian Flynn', 2012, 'Gone Girl', 'David Fincher', 2014, array['Thriller', 'Mystery'], 'On his fifth wedding anniversary, a man reports that his wife has gone missing from their home, and the case quickly becomes a media sensation. As the police investigation and public suspicion close in on him, the true story behind the marriage begins to come apart.')
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
  ('205715d7-cf7a-48b1-a654-d00a072ce1ee'::uuid, 'Ending', 'The book and movie endings are completely different.', 'In the novel, Jack has a moment of real clarity near the very end. The hotel loses its grip on him just long enough for him to warn his family to run, and while he ultimately dies, it reads as a kind of sacrifice rather than pure defeat. The Overlook itself is destroyed shortly after — its neglected boiler, which Jack was responsible for venting throughout the winter, finally explodes and burns the hotel to the ground.

The film ends very differently. Jack chases Danny into a hedge maze on the hotel grounds (an invention of the film — the book has no maze at all) and gets hopelessly lost, eventually freezing to death. The Overlook is left standing, untouched, and the film closes on an ambiguous black-and-white photograph from a 1921 hotel function that appears to show Jack among the guests.

The tonal effect is quite different. King''s ending is about a flawed man clawing back just enough of himself to protect his family, tying into his own reckoning with addiction. Kubrick''s ending offers no such redemption — it suggests something closer to eternal entrapment, with the photograph implying Jack was always somehow part of the hotel.', true, 'approved'),
  ('205715d7-cf7a-48b1-a654-d00a072ce1ee'::uuid, 'Character', 'Book Jack is more sympathetic and his descent is more gradual.', 'The novel spends real time establishing Jack as a sympathetic, if deeply flawed, man. He''s a former teacher and aspiring writer with a genuine drinking problem, haunted by a past incident where he broke Danny''s arm in a drunken rage. Across the book, he is shown actively trying to be better — the Overlook''s influence works on him gradually, exploiting his guilt, his resentments, and his isolation over the course of the winter.

Jack Nicholson''s performance, and Kubrick''s direction, take a different approach. From his very first scene — the job interview at the hotel — there''s an unsettling edge to him that makes his later violence feel less like a slow corruption and more like something that was always just under the surface, waiting to come out.

This is one of the more widely discussed changes among fans of the book: many feel the film trades King''s tragic arc of a man losing a fight he was genuinely having for a more straightforwardly menacing character. King himself was famously unhappy with Kubrick''s interpretation of Jack, which was part of what led him to help produce a more book-faithful 1997 TV miniseries adaptation years later.', false, 'approved'),
  ('205715d7-cf7a-48b1-a654-d00a072ce1ee'::uuid, 'Added Content', 'The topiary animals become a hedge maze, and "Here''s Johnny!" was improvised.', 'In King''s novel, the hotel''s grounds feature topiary hedges trimmed into animal shapes — a lion, a dog, rabbits — that appear to move and stalk Danny when he isn''t looking directly at them. It''s a creeping, always-slightly-uncertain kind of horror rather than a physical chase.

The film replaces this with a large hedge maze, which doesn''t exist in the book at all. It was likely a practical choice as much as a creative one — animating topiary animals convincingly was extremely difficult with the effects available at the time — and it gives the climax a literal, navigable space for Jack to chase Danny through.

The famous "Here''s Johnny!" line, delivered as Jack axes through a door, has no equivalent in the book either. It was reportedly improvised on set by Jack Nicholson, referencing Johnny Carson''s Tonight Show intro, and has since become one of the most quoted ad-libbed lines in film history — despite not being written by Stephen King at all.', false, 'approved'),
  ('205715d7-cf7a-48b1-a654-d00a072ce1ee'::uuid, 'Setting', 'The hotel''s violent history is explained in detail in the book, but left vague in the film.', 'King devotes considerable space to the Overlook''s backstory — a documented history of past owners, organized-crime connections, and prior deaths that Jack digs up himself while researching the hotel''s scrapbooks. By the time the horror escalates, the reader has a fairly clear, almost journalistic understanding of exactly why the hotel is malevolent.

The film keeps almost none of this. Beyond a passing reference to the hotel being built on a Native American burial ground and a few lines from the manager during the interview, Kubrick offers very little concrete explanation. Instead, the sense of wrongness is carried almost entirely through visual and sound design — the hotel''s geometrically impossible hallways, unsettling symmetry, and ambient dread — rather than through exposition.', false, 'approved'),

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
