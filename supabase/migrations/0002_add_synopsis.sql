-- ============================================================================
-- Add a short "synopsis" field to adaptations
-- ============================================================================
-- A brief, spoiler-free premise shown at the top of each adaptation's page,
-- above the categorized list of differences.
-- ============================================================================

alter table adaptations add column if not exists synopsis text;

-- Fill in the synopsis for the example adaptations seeded earlier.
update adaptations set synopsis =
  'An orphaned boy discovers on his eleventh birthday that he''s a wizard, and is whisked away to Hogwarts School of Witchcraft and Wizardry. There, alongside new friends Ron and Hermione, he begins to unravel the mystery of his parents'' deaths and the return of a dark wizard everyone is too afraid to name.'
  where id = '9fb27472-835f-4935-a80c-100bef23e037';

update adaptations set synopsis =
  'A young hobbit named Frodo inherits a magic ring that turns out to be the key to the Dark Lord Sauron''s power. Along with eight companions, he sets out from the peaceful Shire on a perilous journey to destroy the ring before it falls into the wrong hands.'
  where id = 'e08eb5a9-e483-4434-9eb1-8ba8874bf6f7';

update adaptations set synopsis =
  'A recovering alcoholic takes a job as the off-season caretaker of a remote, historic hotel, moving in with his wife and young son for the winter. As the family settles into the empty building, the hotel''s dark past begins to seep into the present.'
  where id = '205715d7-cf7a-48b1-a654-d00a072ce1ee';

update adaptations set synopsis =
  'A billionaire opens a theme park populated with cloned dinosaurs brought back from extinction through genetic engineering. When the park''s security systems fail during a visit from a group of scientists and the owner''s grandchildren, the dinosaurs get loose.'
  where id = '7ac48b57-8ddd-4545-a9ac-76bafbe03988';

update adaptations set synopsis =
  'In a dystopian future, a teenage girl volunteers to take her younger sister''s place in a televised fight to the death between children from each of the country''s twelve districts. She must survive both the arena and the politics of the spectacle surrounding it.'
  where id = '41039f5e-8e35-4169-884e-126b77ed6d39';

update adaptations set synopsis =
  'On his fifth wedding anniversary, a man reports that his wife has gone missing from their home, and the case quickly becomes a media sensation. As the police investigation and public suspicion close in on him, the true story behind the marriage begins to come apart.'
  where id = '1f266fa2-f740-4988-a012-38cb0200590b';
