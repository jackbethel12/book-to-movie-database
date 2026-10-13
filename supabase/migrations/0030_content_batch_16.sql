-- ============================================================================
-- Content batch 16: The Lion, the Witch and the Wardrobe, Frankenstein, The
-- Picture of Dorian Gray, Jane Eyre, Sense and Sensibility, Howl's Moving
-- Castle, Watership Down, Memoirs of a Geisha
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve. Checked
-- against every title in supabase/seed.sql and every migration before
-- writing this -- none of these eight overlap.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$d287e3ed-e29c-40ef-9f67-e8d02dd29905$q$, $q$The Lion, the Witch and the Wardrobe$q$, $q$C.S. Lewis$q$, 1950, $q$The Chronicles of Narnia: The Lion, the Witch and the Wardrobe$q$, $q$Andrew Adamson$q$, 2005, array[$q$Fantasy$q$, $q$Family$q$, $q$Adventure$q$], $txt$Four siblings evacuated to a country house during World War II stumble through a wardrobe into a snowbound magical kingdom, where they're drawn into a prophecy to help free the land from an eternal winter imposed by its tyrannical White Witch.$txt$, $q$https://covers.openlibrary.org/b/id/8441376-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/iREd0rNCjYdf5Ar0vfaW32yrkm.jpg$q$),
  ($q$13d93e58-2543-4838-9e1d-30f77c9d2b11$q$, $q$Frankenstein$q$, $q$Mary Shelley$q$, 1818, $q$Mary Shelley's Frankenstein$q$, $q$Kenneth Branagh$q$, 1994, array[$q$Horror$q$, $q$Drama$q$], $txt$An obsessive young scientist assembles and reanimates a creature from dead tissue, then abandons his creation in horror, setting off a chain of tragedy as the rejected being seeks revenge on everyone his creator loves.$txt$, $q$https://covers.openlibrary.org/b/id/12356249-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/bOwCAQsZlEKrwhPi1ejY6BS8jpL.jpg$q$),
  ($q$97181041-83be-4bd3-ba7a-8d8952f6fcc0$q$, $q$The Picture of Dorian Gray$q$, $q$Oscar Wilde$q$, 1890, $q$The Picture of Dorian Gray$q$, $q$Albert Lewin$q$, 1945, array[$q$Horror$q$, $q$Drama$q$], $txt$A beautiful young man wishes that a portrait of himself would age in his place, and watches in secret horror as the painting grows monstrous with every sin he commits while his own face stays forever young.$txt$, $q$https://covers.openlibrary.org/b/id/14314858-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/mfvcsmAzdie8YuWI0JpO2u1uzfF.jpg$q$),
  ($q$f80ad433-1c42-46c0-ae30-8d291ff5009e$q$, $q$Jane Eyre$q$, $q$Charlotte Bronte$q$, 1847, $q$Jane Eyre$q$, $q$Cary Fukunaga$q$, 2011, array[$q$Drama$q$, $q$Romance$q$], $txt$An orphaned governess with a fierce independent streak falls for her brooding employer, only to discover he's hiding a devastating secret that threatens to destroy any future together.$txt$, $q$https://covers.openlibrary.org/b/id/8235363-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/3Cn7D0wEaxnvm8kTta1osNu3QJv.jpg$q$),
  ($q$ad5d6c80-880f-42b2-be8d-75ed8c7ab25b$q$, $q$Sense and Sensibility$q$, $q$Jane Austen$q$, 1811, $q$Sense and Sensibility$q$, $q$Ang Lee$q$, 1995, array[$q$Drama$q$, $q$Romance$q$], $txt$After their father's death leaves them with little money, two very different sisters -- one guided by reason, the other by feeling -- navigate love and financial hardship in early nineteenth-century England.$txt$, $q$https://covers.openlibrary.org/b/id/9278292-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/9YdQ73YmvInxpXZVNjEKePw9tRO.jpg$q$),
  ($q$9e055a5c-e786-4567-902b-a6432d5833ee$q$, $q$Howl's Moving Castle$q$, $q$Diana Wynne Jones$q$, 1986, $q$Howl's Moving Castle$q$, $q$Hayao Miyazaki$q$, 2004, array[$q$Fantasy$q$, $q$Family$q$, $q$Adventure$q$], $txt$Cursed into an old woman's body by a jealous witch, a young hatmaker takes refuge in the walking castle of a vain, elusive wizard, where she slowly unravels the truth behind his power and the fire demon bound to him.$txt$, $q$https://covers.openlibrary.org/b/id/8783945-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/13kOl2v0nD2OLbVSHnHk8GUFEhO.jpg$q$),
  ($q$5918108d-0d41-498f-832c-25b786a35ad7$q$, $q$Watership Down$q$, $q$Richard Adams$q$, 1972, $q$Watership Down$q$, $q$Martin Rosen$q$, 1978, array[$q$Adventure$q$, $q$Fantasy$q$], $txt$After a young rabbit's vision of disaster drives a small band to flee their warren, they endure a perilous journey across the English countryside to find a new home, fighting off predators and a brutal rival warren along the way.$txt$, $q$https://covers.openlibrary.org/b/id/6450196-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/q9ZcNxfquJbMTd6UfhAlJbmLBts.jpg$q$),
  ($q$b62d4229-f46f-4262-97f6-ba1a0cdebefd$q$, $q$Memoirs of a Geisha$q$, $q$Arthur Golden$q$, 1997, $q$Memoirs of a Geisha$q$, $q$Rob Marshall$q$, 2005, array[$q$Drama$q$, $q$Romance$q$], $txt$Sold by her family as a child, a girl in prewar Kyoto is trained in the exacting traditions of the geisha, rising through a world of rivalry and obligation while secretly holding onto hope for a man who once showed her kindness.$txt$, $q$https://covers.openlibrary.org/b/id/8231782-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/pBwYsQaSTgnPphIy02DJjCF2cqs.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- The Lion, the Witch and the Wardrobe
  (
    $q$d287e3ed-e29c-40ef-9f67-e8d02dd29905$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The book's explicit Christian allegory, with Aslan's sacrifice and resurrection directly paralleling the Gospel story, is present in the film but less emphasized in its marketing and framing.$txt$,
    $txt$Lewis wrote the Narnia books with deliberate Christian symbolism, and Aslan's death on the Stone Table and return are a clear allegory for the Crucifixion and Resurrection. The film retains these plot beats faithfully but was marketed primarily as a family fantasy adventure, downplaying the overt religious reading compared to how explicitly Lewis intended it.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$d287e3ed-e29c-40ef-9f67-e8d02dd29905$q$::uuid,
    $q$Added Content$q$,
    $txt$The film adds an extended battle sequence at the climax that is described much more briefly in the book.$txt$,
    $txt$Lewis's novel summarizes the final battle between Aslan's forces and the White Witch's army in a comparatively short passage. The film expands this into a large-scale action set piece lasting several minutes, giving the climax far more visual spectacle than the book's brief description provides.$txt$,
    false,
    $q$approved$q$
  ),

  -- Frankenstein
  (
    $q$13d93e58-2543-4838-9e1d-30f77c9d2b11$q$::uuid,
    $q$Character$q$,
    $txt$The creature is articulate, self-taught, and deeply eloquent in the novel, a stark contrast to the mostly non-verbal, grunting monster of popular film tradition.$txt$,
    $txt$In Shelley's book, the creature secretly observes a family and teaches itself to read and speak, eventually delivering long, sophisticated passages reasoning about his own existence and demanding that Victor make him a companion. Branagh's 1994 film is more faithful to this than most adaptations, giving the creature real dialogue and interiority, though even it compresses much of the creature's own extended first-person narration from the book.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$13d93e58-2543-4838-9e1d-30f77c9d2b11$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's framing device, in which the whole story is relayed through letters from an Arctic explorer, is only loosely kept in the film.$txt$,
    $txt$Shelley's book is structured as nested narratives: an explorer named Walton writes letters to his sister recounting Victor's story, which in turn contains the creature's own account told back to Victor. The film uses a version of the Arctic frame but streamlines this layered, multi-narrator structure considerably.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Picture of Dorian Gray
  (
    $q$97181041-83be-4bd3-ba7a-8d8952f6fcc0$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Wilde's novel is dense with epigrammatic dialogue and philosophical digressions from Lord Henry that the film trims substantially.$txt$,
    $txt$Much of the book's reputation rests on Lord Henry Wotton's long, quotable speeches about aestheticism, hedonism, and morality, which make up a large portion of the text's actual content. The film keeps Lord Henry's corrupting influence on Dorian but cuts down heavily on the extended philosophical dialogue to keep the pace moving as a visual drama.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$97181041-83be-4bd3-ba7a-8d8952f6fcc0$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's famous use of Technicolor inserts to reveal the corrupted portrait, set against an otherwise black-and-white film, is a purely cinematic device.$txt$,
    $txt$Most of the 1945 film is shot in black and white, but the camera cuts briefly to full, startling color each time the portrait itself is shown after it has changed. Wilde's novel, as prose, naturally describes the portrait's transformation through language rather than any visual contrast device -- this is an invention specific to the film adaptation.$txt$,
    false,
    $q$approved$q$
  ),

  -- Jane Eyre
  (
    $q$f80ad433-1c42-46c0-ae30-8d291ff5009e$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is narrated entirely in Jane's own retrospective first-person voice, directly addressing the reader at points; the film uses a nonlinear structure without this narration.$txt$,
    $txt$Bronte's book is written as Jane's own account of her life, complete with asides like "Reader, I married him," giving it a strong, intimate narrative voice throughout. The 2011 film restructures the story with flashbacks framed around Jane's flight across the moors, and drops the novel's direct first-person narration in favor of more conventional visual storytelling.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$f80ad433-1c42-46c0-ae30-8d291ff5009e$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Jane's childhood at Lowood School, including her friendship with Helen Burns, is considerably condensed in the film.$txt$,
    $txt$The novel spends a substantial early section on Jane's harsh years at Lowood, developing her friendship with the saintly Helen Burns and the trauma of the school's cruel conditions in detail. The film moves through this period more quickly to reach the Thornfield section of the story sooner.$txt$,
    false,
    $q$approved$q$
  ),

  -- Sense and Sensibility
  (
    $q$ad5d6c80-880f-42b2-be8d-75ed8c7ab25b$q$::uuid,
    $q$Character$q$,
    $txt$Colonel Brandon is noticeably older than Marianne in the novel, an age gap the film narrows considerably through casting.$txt$,
    $txt$Austen's book describes Colonel Brandon as being in his mid-thirties, nearly twice the age of the teenage Marianne, which is itself a point of discussion among the characters. The film, with Alan Rickman in the role, keeps the age difference but the casting and performance soften how pronounced the gap feels compared to the text.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$ad5d6c80-880f-42b2-be8d-75ed8c7ab25b$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel spends much more time on Elinor's restrained, interior suffering, since the reader has direct access to her thoughts in a way the film can't replicate.$txt$,
    $txt$Austen's narration is closely tied to Elinor's perspective, letting readers see the full weight of what she silently endures while projecting calm to everyone around her. The film conveys this largely through Emma Thompson's performance, but necessarily loses some of the book's direct access to Elinor's private reasoning.$txt$,
    false,
    $q$approved$q$
  ),

  -- Howl's Moving Castle
  (
    $q$9e055a5c-e786-4567-902b-a6432d5833ee$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The film adds a prominent anti-war theme and an invented conflict between kingdoms that isn't part of the novel's plot.$txt$,
    $txt$Miyazaki's film introduces a war between two nations, with Howl conflicted about being conscripted to fight, giving the story a pacifist political dimension. Diana Wynne Jones's novel doesn't include this war plot at all -- its conflicts are more domestic and magical, centered on the Witch of the Waste and Howl's contract with the fire demon Calcifer, without any large-scale war.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$9e055a5c-e786-4567-902b-a6432d5833ee$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Several of the book's subplots involving Sophie's sisters and a parallel world connected to Wales are left out of the film entirely.$txt$,
    $txt$The novel gives real attention to Sophie's two sisters and their own romantic entanglements, and includes a subplot where Howl has a second identity and home in modern-day Wales, connected to Ingary through a magic door. The film drops the Wales subplot and gives much less focus to Sophie's sisters.$txt$,
    false,
    $q$approved$q$
  ),

  -- Watership Down
  (
    $q$5918108d-0d41-498f-832c-25b786a35ad7$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel includes an extensive invented rabbit mythology and folklore, told in interspersed stories about the trickster hero El-ahrairah, that the film only briefly touches on.$txt$,
    $txt$Adams's book periodically breaks from the main plot to tell traditional rabbit folk tales about El-ahrairah, a legendary trickster-prince figure, giving the rabbits' culture and belief system real depth. The film keeps a few brief allusions to this mythology but cuts the majority of these embedded stories to focus on the main journey.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$5918108d-0d41-498f-832c-25b786a35ad7$q$::uuid,
    $q$Character$q$,
    $txt$The novel gives considerably more attention to the rabbits' distinct personalities and a wider ensemble cast than the film has time to develop.$txt$,
    $txt$Adams's book is long enough to develop a large number of individual rabbits -- Bigwig, Fiver, Hazel, Pipkin, and many others -- each with a clear and consistent personality across hundreds of pages. The film, at under 100 minutes, keeps the central cast but necessarily reduces how much distinct characterization many of the supporting rabbits receive.$txt$,
    false,
    $q$approved$q$
  ),

  -- Memoirs of a Geisha
  (
    $q$b62d4229-f46f-4262-97f6-ba1a0cdebefd$q$::uuid,
    $q$Character$q$,
    $txt$The film cast Chinese actresses in the lead Japanese roles, a casting choice that drew criticism and has no bearing on the novel itself.$txt$,
    $txt$Golden's novel is set entirely within Japanese culture and written from a Japanese narrator's perspective. The film's casting of prominent Chinese actresses, including Zhang Ziyi and Gong Li, in the central geisha roles was controversial, particularly given the historical tensions between Japan and China, and is a decision specific to the film's production rather than anything dictated by the book.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$b62d4229-f46f-4262-97f6-ba1a0cdebefd$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel spends much more time detailing the specific training, rituals, and economics of becoming a geisha than the film has room for.$txt$,
    $txt$Golden's book, drawing on extensive research and interviews, goes into granular detail about the apprenticeship system, debt arrangements, and daily rituals that shaped a geisha's life and career. The film retains the broad strokes of this world but compresses much of the procedural detail to keep its focus on the central romantic plot.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
