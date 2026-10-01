-- ============================================================================
-- Content batch 14: The Kite Runner, The Color Purple, Ender's Game, Eragon,
-- Mary Poppins, The Golden Compass, A Wrinkle in Time, The Da Vinci Code
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve.
--
-- Checked against every title already in supabase/seed.sql AND every
-- migration (not just migrations/*.sql, after the Gone Girl duplicate
-- mistake in batch 13) before writing this -- none of these eight overlap.
-- "The Golden Compass" was originally published in the UK as "Northern
-- Lights"; the book_cover_url below is from that edition since it's the
-- far better-attested record in Open Library.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$0d5caf03-b4a4-4513-ac55-ef93ad4dc30f$q$, $q$The Kite Runner$q$, $q$Khaled Hosseini$q$, 2003, $q$The Kite Runner$q$, $q$Marc Forster$q$, 2007, array[$q$Drama$q$], $txt$A man haunted by a childhood betrayal in Afghanistan returns decades later, after fleeing to America, to try to atone for abandoning the servant boy who was once his closest friend.$txt$, $q$https://covers.openlibrary.org/b/id/14846827-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/dom2esWWW8C9jS2v7dOhW48LwHh.jpg$q$),
  ($q$3c16138c-e94b-445a-b68c-2be0c3abf940$q$, $q$The Color Purple$q$, $q$Alice Walker$q$, 1982, $q$The Color Purple$q$, $q$Steven Spielberg$q$, 1985, array[$q$Drama$q$], $txt$Told through letters over several decades, a poor Black woman in the early twentieth-century American South endures abuse and hardship while finding strength through the women who come into her life.$txt$, $q$https://covers.openlibrary.org/b/id/8564628-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/6bvxkcTAXyqxGRwo38mxw92D6Xr.jpg$q$),
  ($q$d00699ba-40e7-4840-8558-9425baa718e0$q$, $q$Ender's Game$q$, $q$Orson Scott Card$q$, 1985, $q$Ender's Game$q$, $q$Gavin Hood$q$, 2013, array[$q$Science Fiction$q$], $txt$A gifted child is recruited into a military training program to prepare him to lead humanity's fleet against an alien enemy, not realizing how much of his "training" is actually real.$txt$, $q$https://covers.openlibrary.org/b/id/12996033-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/pVcRI5YKnkkgaAD876jBeKb189d.jpg$q$),
  ($q$b943be77-1637-4a30-9f5a-5af748c1a40d$q$, $q$Eragon$q$, $q$Christopher Paolini$q$, 2002, $q$Eragon$q$, $q$Stefen Fangmeier$q$, 2006, array[$q$Fantasy$q$, $q$Adventure$q$], $txt$A farm boy who discovers a mysterious stone that hatches into a dragon finds himself swept into an ancient conflict as one of the last Dragon Riders in a kingdom ruled by a tyrannical king.$txt$, $q$https://covers.openlibrary.org/b/id/13921600-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/mNu6QLUnKqPIjRA3pgEb5dkJye6.jpg$q$),
  ($q$cabbdf6e-f248-4a2f-811b-b7665fee53de$q$, $q$Mary Poppins$q$, $q$P.L. Travers$q$, 1934, $q$Mary Poppins$q$, $q$Robert Stevenson$q$, 1964, array[$q$Fantasy$q$, $q$Family$q$, $q$Comedy$q$], $txt$A mysterious, magical nanny arrives at the home of a troubled London banking family and uses her unusual gifts to bring the children, and eventually their father, closer together.$txt$, $q$https://covers.openlibrary.org/b/id/7421-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/o4Wsby4ydIXhWmtmfvb451D5Np1.jpg$q$),
  ($q$ba4402d2-fde1-45d8-98e8-5e96984d1f4b$q$, $q$The Golden Compass$q$, $q$Philip Pullman$q$, 1995, $q$The Golden Compass$q$, $q$Chris Weitz$q$, 2007, array[$q$Fantasy$q$, $q$Adventure$q$], $txt$In a parallel world where every person's soul takes the form of an animal companion, a headstrong girl sets out to rescue kidnapped children and uncover a conspiracy involving a mysterious substance called Dust.$txt$, $q$https://covers.openlibrary.org/b/id/8747028-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/6DTH9poR8RAw859L6OuokT7z993.jpg$q$),
  ($q$8624d6e7-98fa-4166-9a79-b996268df07f$q$, $q$A Wrinkle in Time$q$, $q$Madeleine L'Engle$q$, 1962, $q$A Wrinkle in Time$q$, $q$Ava DuVernay$q$, 2018, array[$q$Science Fiction$q$, $q$Fantasy$q$, $q$Family$q$], $txt$A young girl, her gifted younger brother, and a new friend travel across the universe through the folding of space and time to rescue her scientist father from a sinister cosmic force.$txt$, $q$https://covers.openlibrary.org/b/id/8709146-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/yAcb58vipewa1BfNit2RjE6boXA.jpg$q$),
  ($q$28d6d851-cc60-43ee-9157-417c9d6e7f07$q$, $q$The Da Vinci Code$q$, $q$Dan Brown$q$, 2003, $q$The Da Vinci Code$q$, $q$Ron Howard$q$, 2006, array[$q$Mystery$q$, $q$Thriller$q$], $txt$A Harvard symbologist and a French cryptologist race to decode a murdered curator's dying clues, uncovering a conspiracy that threatens to upend two thousand years of religious history.$txt$, $q$https://covers.openlibrary.org/b/id/9255229-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/9ejKfNk0LBhSI9AahH4f9NJNZNM.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- The Kite Runner
  (
    $q$0d5caf03-b4a4-4513-ac55-ef93ad4dc30f$q$::uuid,
    $q$Timeline$q$,
    $txt$The novel spans roughly four decades, including Amir's adult life and marriage in America in detail; the film compresses this considerably.$txt$,
    $txt$Hosseini's book spends a large portion of its length on Amir's adult years in California, his relationship with his father in exile, his marriage to Soraya, and his career as a writer, before the plot returns him to Afghanistan. The film moves through this adult section much more quickly to spend more of its runtime on the childhood section and the eventual return trip.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$0d5caf03-b4a4-4513-ac55-ef93ad4dc30f$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Amir's career as a published novelist, and his father-in-law's hostility toward it, is left out of the film.$txt$,
    $txt$The book spends time on Amir's development as a writer in America, including his father-in-law's dismissive attitude toward writing as a profession, which feeds into the novel's broader themes about fathers and sons. The film doesn't include this thread.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Color Purple
  (
    $q$3c16138c-e94b-445a-b68c-2be0c3abf940$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel's epistolary structure, told as a series of letters mostly from Celie to God, isn't replicated in the film.$txt$,
    $txt$Walker's book is written entirely as letters, first from Celie to God and later between Celie and her sister Nettie, giving the story a deeply intimate, confessional quality. Spielberg's film tells the same events through conventional narrative filmmaking, with voiceover used only sparingly, which necessarily changes the texture of how Celie's inner life comes across.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$3c16138c-e94b-445a-b68c-2be0c3abf940$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is more explicit about Celie and Shug's romantic relationship than the film, which softens it considerably.$txt$,
    $txt$Walker's book depicts a clearly romantic and sexual relationship between Celie and Shug Avery as a central part of Celie's growth and healing. The 1985 film, while retaining their close bond, downplays the romantic dimension of their relationship substantially compared to the source material.$txt$,
    true,
    $q$approved$q$
  ),

  -- Ender's Game
  (
    $q$d00699ba-40e7-4840-8558-9425baa718e0$q$::uuid,
    $q$Character$q$,
    $txt$Ender and the other child soldiers are considerably younger in the book than the actors cast in the film.$txt$,
    $txt$Card's novel has Ender begin his training around age six and command the final battles at around age eleven, part of the book's unsettling point about exploiting children's minds before they're old enough to understand the morality of what they're doing. The film ages the characters up into their teens, which changes the story's impact considerably.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$d00699ba-40e7-4840-8558-9425baa718e0$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's parallel storyline following Ender's siblings Peter and Valentine manipulating Earth's politics is cut from the film entirely.$txt$,
    $txt$The book alternates between Ender's training and a subplot in which his brother Peter and sister Valentine build anonymous online political personas to influence world affairs after the war -- setting up Peter's prominent role in Card's later books. The film focuses entirely on Ender's own story and omits this thread.$txt$,
    false,
    $q$approved$q$
  ),

  -- Eragon
  (
    $q$b943be77-1637-4a30-9f5a-5af748c1a40d$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The film cuts most of the book's lengthy training and travel sections, compressing Eragon's development as a Rider dramatically.$txt$,
    $txt$Paolini's novel spends a large portion of its length on Eragon's slow training under Brom and his long journey across the land of Alagaesia, developing his magical abilities and his bond with Saphira gradually. The 104-minute film compresses nearly all of this into a brief montage to fit the story into a single feature.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$b943be77-1637-4a30-9f5a-5af748c1a40d$q$::uuid,
    $q$Character$q$,
    $txt$Brom's backstory as a former Dragon Rider and the circumstances of his death differ significantly from the book.$txt$,
    $txt$The novel gives Brom's history as a Rider and his reasons for living in exile a slower, more mysterious build-up, and the manner of his death differs in detail from the film's version. The film reveals and resolves his backstory more quickly and changes several specifics of how events play out.$txt$,
    true,
    $q$approved$q$
  ),

  -- Mary Poppins
  (
    $q$cabbdf6e-f248-4a2f-811b-b7665fee53de$q$::uuid,
    $q$Character$q$,
    $txt$Book-Mary Poppins is considerably sterner, vainer, and less overtly warm than the film's more gentle, singing version.$txt$,
    $txt$Travers's original Mary Poppins is a brisk, vain, and often sharp-tongued character who rarely explains her magic and shows affection only obliquely; Travers was famously unhappy with how much Disney's film softened and sentimentalized her. The film, especially through Julie Andrews's performance, gives Mary Poppins a warmer, more whimsical, musical persona that differs noticeably from the books.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$cabbdf6e-f248-4a2f-811b-b7665fee53de$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's political subplot involving Mr. Banks's job at the bank and the suffragette-adjacent material for Mrs. Banks are largely inventions for the movie.$txt$,
    $txt$Travers's books are a loose series of largely episodic magical adventures with the Banks children and don't center on Mr. Banks's career troubles or give Mrs. Banks a notable political subplot. The film builds out an original father-redemption arc around Mr. Banks's job at the bank, along with other material specific to the screen adaptation, that isn't drawn from the source books.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Golden Compass
  (
    $q$ba4402d2-fde1-45d8-98e8-5e96984d1f4b$q$::uuid,
    $q$Ending$q$,
    $txt$The film removes the novel's darker, more ambiguous ending, cutting the story short of several major events from the book's final chapters.$txt$,
    $txt$Pullman's novel ends with a devastating act of betrayal and a cliffhanger that sets up the rest of the trilogy on a bleak, morally complicated note. The film stops short of adapting this ending at all, instead concluding on a more hopeful, triumphant beat, reportedly in part due to concerns about the book's content being too dark or anti-religious for a wide family audience.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$ba4402d2-fde1-45d8-98e8-5e96984d1f4b$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel's pointed critique of organized religion, embodied by the authoritarian Magisterium, is considerably softened in the film.$txt$,
    $txt$Pullman's book is explicit about the Magisterium functioning as a stand-in for a controlling, dogmatic religious authority, and the story's themes engage directly with ideas about free will, dogma, and institutional power. The film adaptation notably tones down this religious critique, keeping the Magisterium as a generic authoritarian antagonist without the same pointed subtext.$txt$,
    false,
    $q$approved$q$
  ),

  -- A Wrinkle in Time
  (
    $q$8624d6e7-98fa-4166-9a79-b996268df07f$q$::uuid,
    $q$Character$q$,
    $txt$Meg's family and the central trio of Mrs. Who, Mrs. Whatsit, and Mrs. Which are reimagined quite differently on screen than they're described in the novel.$txt$,
    $txt$L'Engle's book describes the three mysterious women in fairly modest, old-fashioned terms. The 2018 film gives all three a much more elaborate, visually extravagant design and persona, and recasts the family and supporting characters with a different racial makeup than the book originally depicts, a deliberate choice by director Ava DuVernay.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$8624d6e7-98fa-4166-9a79-b996268df07f$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's extended sequence on the conformist planet of Camazotz is considerably shorter and different in the film.$txt$,
    $txt$A major portion of L'Engle's book takes place on Camazotz, a planet where every person behaves in identical, synchronized conformity under the control of IT, and the book spends real time building out this unsettling setting. The film compresses this sequence and changes several of its specific details and visuals.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Da Vinci Code
  (
    $q$28d6d851-cc60-43ee-9157-417c9d6e7f07$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel spends much more time walking through the historical and symbological reasoning behind its claims about the Holy Grail and the Priory of Sion.$txt$,
    $txt$Brown's book devotes extensive passages to Robert Langdon and Sophie Neveu's detailed, lecture-like reasoning through art history, symbology, and the theories underpinning the plot. The film necessarily trims a great deal of this explanatory material to keep the pace moving as a thriller.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$28d6d851-cc60-43ee-9157-417c9d6e7f07$q$::uuid,
    $q$Character$q$,
    $txt$Sophie Neveu's personal backstory and estrangement from her grandfather is given less development in the film.$txt$,
    $txt$The novel spends more time on Sophie's personal history with her grandfather Jacques Sauniere, including the childhood rift between them that the plot eventually explains. The film keeps the broad strokes of this relationship but gives it less space to develop.$txt$,
    true,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
