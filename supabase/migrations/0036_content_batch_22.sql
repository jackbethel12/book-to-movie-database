-- ============================================================================
-- Content batch 22: The Girl on the Train, Me Before You, One Day, P.S. I
-- Love You, Wild, The Blind Side, Seabiscuit, 127 Hours (Between a Rock and
-- a Hard Place)
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve. Checked
-- against every title in supabase/seed.sql and every migration before
-- writing this -- none of these eight overlap.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$9526b5d8-90f9-4da3-af30-6b1ebfb7cc00$q$, $q$The Girl on the Train$q$, $q$Paula Hawkins$q$, 2015, $q$The Girl on the Train$q$, $q$Tate Taylor$q$, 2016, array[$q$Thriller$q$, $q$Mystery$q$], $txt$A troubled alcoholic woman who watches a couple's house from her daily train commute becomes entangled in a police investigation after the wife suddenly disappears, and begins to question her own unreliable memory of that night.$txt$, $q$https://covers.openlibrary.org/b/id/7350360-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/AhTO2QWG0tug7yDoh0XoaMhPt3J.jpg$q$),
  ($q$ab379baa-675d-4766-8577-9f909a0a60cd$q$, $q$Me Before You$q$, $q$Jojo Moyes$q$, 2012, $q$Me Before You$q$, $q$Thea Sharrock$q$, 2016, array[$q$Drama$q$, $q$Romance$q$], $txt$A cheerfully ordinary young woman takes a job caring for a once-adventurous man left paraplegic after an accident, and the two form an unexpected bond that forces her to confront his secret plan to end his life.$txt$, $q$https://covers.openlibrary.org/b/id/14419339-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/Ia3dzj5LnCj1ZBdlVeJrbKJQxG.jpg$q$),
  ($q$b4dfd04e-3eaf-45a8-b98a-625e7629fdf0$q$, $q$One Day$q$, $q$David Nicholls$q$, 2009, $q$One Day$q$, $q$Lone Scherfig$q$, 2011, array[$q$Drama$q$, $q$Romance$q$], $txt$Revisiting two college friends on the same date, July 15th, for twenty consecutive years, this traces the slow, stop-and-start pull between them as their lives repeatedly intersect and drift apart.$txt$, $q$https://covers.openlibrary.org/b/id/8580421-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/n9jMwSg4IavdD8wqdYnyW5w3Mvp.jpg$q$),
  ($q$d6e378b5-a7af-4913-a93d-4c88138cba71$q$, $q$PS, I Love You$q$, $q$Cecelia Ahern$q$, 2004, $q$P.S. I Love You$q$, $q$Richard LaGravenese$q$, 2007, array[$q$Drama$q$, $q$Romance$q$, $q$Comedy$q$], $txt$After her husband dies of a brain tumor, a young widow discovers he's left behind a series of letters meant to guide and comfort her through her first year of grief, one month at a time.$txt$, $q$https://covers.openlibrary.org/b/id/4995410-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/x6M9nlTpgpI4AOw0tMkOAVbhL5z.jpg$q$),
  ($q$2484ce67-86f0-494c-beb3-8f8eabef397c$q$, $q$Wild$q$, $q$Cheryl Strayed$q$, 2012, $q$Wild$q$, $q$Jean-Marc Vallée$q$, 2014, array[$q$Drama$q$, $q$Adventure$q$], $txt$Reeling from her mother's death and the collapse of her own life, a woman with no hiking experience sets out alone to walk over a thousand miles of the Pacific Crest Trail to try to put herself back together.$txt$, $q$https://covers.openlibrary.org/b/id/7249596-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/ohhWI4Xwf4m4HjbQiIkyAhLekUy.jpg$q$),
  ($q$965ba595-7b4d-4714-a584-169f1d370bd9$q$, $q$The Blind Side$q$, $q$Michael Lewis$q$, 2006, $q$The Blind Side$q$, $q$John Lee Hancock$q$, 2009, array[$q$Drama$q$], $txt$A homeless Black teenager is taken in by a wealthy white Memphis family, who help him build the stability and support that lets his extraordinary athletic talent carry him toward a future in professional football.$txt$, $q$https://covers.openlibrary.org/b/id/1195401-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/PhpAdRopu0sOWf0BY7vVtxrRD3.jpg$q$),
  ($q$6c715d52-443f-4dfc-a38a-36aebc629fee$q$, $q$Seabiscuit$q$, $q$Laura Hillenbrand$q$, 2001, $q$Seabiscuit$q$, $q$Gary Ross$q$, 2003, array[$q$Drama$q$, $q$History$q$], $txt$During the Great Depression, an undersized, ill-tempered racehorse and the three broken men who train, ride, and own him become unlikely American heroes as they take on the sport's biggest champion.$txt$, $q$https://covers.openlibrary.org/b/id/3193824-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/5m7NfZvxYsSm2YBCJ2VPQf8ziKr.jpg$q$),
  ($q$3060ca4b-80de-4293-8cae-ddc3b7442e9e$q$, $q$Between a Rock and a Hard Place$q$, $q$Aron Ralston$q$, 2004, $q$127 Hours$q$, $q$Danny Boyle$q$, 2010, array[$q$Drama$q$, $q$Adventure$q$], $txt$A solo canyoneer becomes trapped in a remote Utah slot canyon when a boulder pins his arm against the rock wall, and over five harrowing days must find the will to do whatever it takes to survive.$txt$, $q$https://covers.openlibrary.org/b/id/479305-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/h0RMdn0rfl9l5hWXz3tUh6QVkhi.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- The Girl on the Train
  (
    $q$9526b5d8-90f9-4da3-af30-6b1ebfb7cc00$q$::uuid,
    $q$Setting$q$,
    $txt$The film relocates the story from London's commuter suburbs to New York's Hudson Valley.$txt$,
    $txt$Hawkins's novel is set along a specific English commuter rail line outside London, with the setting's dreary suburban Englishness part of its atmosphere. The film moves the entire story to the New York City suburbs along the Metro-North line, changing the geography and cultural texture of the story considerably.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$9526b5d8-90f9-4da3-af30-6b1ebfb7cc00$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is told through three alternating first-person female narrators with overlapping unreliable accounts; the film keeps this structure but gives Rachel's perspective more dominant weight.$txt$,
    $txt$Hawkins's book splits narration fairly evenly among Rachel, Anna, and Megan, each an unreliable narrator in her own way, building the mystery through the gaps and contradictions between their accounts. The film retains all three perspectives but centers much more of its runtime and sympathy on Rachel specifically.$txt$,
    false,
    $q$approved$q$
  ),

  -- Me Before You
  (
    $q$ab379baa-675d-4766-8577-9f909a0a60cd$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel gives considerably more space to Louisa's own family troubles and financial pressures than the film does.$txt$,
    $txt$Moyes's book spends real time on Louisa's family situation, including her father's unemployment and her sister's unplanned pregnancy, which motivate her need to keep the caretaking job despite its difficulty. The film keeps a version of this family backdrop but gives it noticeably less development.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$ab379baa-675d-4766-8577-9f909a0a60cd$q$::uuid,
    $q$Character$q$,
    $txt$Will's biting, sometimes cruel early behavior toward Louisa is somewhat softened in the film compared to the book.$txt$,
    $txt$The novel is more willing to let Will be genuinely harsh and difficult in his early scenes with Louisa, reflecting the depth of his depression and anger about his condition. The film tempers some of this edge, making him a bit more immediately sympathetic than the book's slower-won warmth.$txt$,
    false,
    $q$approved$q$
  ),

  -- One Day
  (
    $q$b4dfd04e-3eaf-45a8-b98a-625e7629fdf0$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel's structure of checking in on exactly one date each year gives readers much more cumulative detail about each year's events than the film's necessarily faster pace allows.$txt$,
    $txt$Nicholls's book spends a full chapter on each July 15th across two decades, accumulating a dense, novelistic sense of both characters' full lives, careers, and other relationships in between the snapshots. The film, compressing the same twenty-year structure into under two hours, has to summarize much more of what happens between each visit.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$b4dfd04e-3eaf-45a8-b98a-625e7629fdf0$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Dexter's career decline and struggles with addiction are given much more detailed treatment in the novel than the film has time for.$txt$,
    $txt$The book traces Dexter's slide from television fame into substance abuse and personal crisis across several of its yearly chapters in considerable detail. The film keeps the broad arc of his decline but moves through it more quickly to maintain pace across the full twenty-year span.$txt$,
    false,
    $q$approved$q$
  ),

  -- PS, I Love You
  (
    $q$d6e378b5-a7af-4913-a93d-4c88138cba71$q$::uuid,
    $q$Setting$q$,
    $txt$The film relocates much of the story from Ireland to New York City, while the novel is set entirely in Dublin.$txt$,
    $txt$Ahern's book is set in Dublin and keeps Holly and her circle of friends and family rooted there throughout. The film moves Holly's home to New York, retaining a trip to Ireland as a plot element rather than the story's primary setting.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$d6e378b5-a7af-4913-a93d-4c88138cba71$q$::uuid,
    $q$Character$q$,
    $txt$Several side characters and subplots involving Holly's friends and family are trimmed or merged for the film.$txt$,
    $txt$The novel develops a wider circle of friends and family around Holly, including more detailed subplots for her mother and friends, across its longer page count. The film narrows its focus to a smaller core cast to fit the story into a standard runtime.$txt$,
    false,
    $q$approved$q$
  ),

  -- Wild
  (
    $q$2484ce67-86f0-494c-beb3-8f8eabef397c$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The memoir is written in a more essayistic, reflective style with less forward narrative momentum than the film's more streamlined journey structure.$txt$,
    $txt$Strayed's book moves fluidly between present-tense hiking narration and extended memory and reflection, with a literary, meditative quality to its prose. The film, while using flashbacks extensively, shapes the material into a tighter, more conventionally paced redemption arc.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2484ce67-86f0-494c-beb3-8f8eabef397c$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book includes more detail about the practical, often unglamorous realities of long-distance hiking than the film has room to show.$txt$,
    $txt$Strayed's memoir spends considerable time on the gear mistakes, physical toll, and logistics of her unprepared hike, giving a granular sense of what the trail actually demanded of her day to day. The film conveys the hardship but necessarily compresses much of this procedural detail.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Blind Side
  (
    $q$965ba595-7b4d-4714-a584-169f1d370bd9$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Michael Lewis's book is as much about the evolution of football strategy and the rising value of the left tackle position as it is about Michael Oher's personal story.$txt$,
    $txt$Lewis's book interweaves Oher's biography with an extended explanation of how NFL strategy changed to make the left tackle position (protecting a quarterback's "blind side") one of football's highest-paid roles, using that broader context to frame why Oher's rare physical gifts mattered so much. The film focuses almost entirely on Oher's personal story and the Tuohy family, leaving out most of this football-strategy framing.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$965ba595-7b4d-4714-a584-169f1d370bd9$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The film has been criticized for centering the Tuohy family's perspective and generosity more than Oher's own voice and agency, a framing not as pronounced in the book.$txt$,
    $txt$Lewis's book, while still telling the story partly through the family that took Oher in, gives considerable attention to Oher's own athletic development and football career on its own terms. The film has drawn criticism, including from Oher himself in later years, for framing the story more around the white family's benevolence than his own perspective and accomplishments.$txt$,
    false,
    $q$approved$q$
  ),

  -- Seabiscuit
  (
    $q$6c715d52-443f-4dfc-a38a-36aebc629fee$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Hillenbrand's book includes much more detail about Depression-era America and horse racing's place in popular culture than the film has time to cover.$txt$,
    $txt$The book situates Seabiscuit's story within a detailed portrait of the Great Depression and the explosion of horse racing's popularity as an escapist national pastime, with extensive historical and cultural context. The film keeps this backdrop but necessarily compresses much of the book's wider historical detail to focus on the central human and equine characters.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$6c715d52-443f-4dfc-a38a-36aebc629fee$q$::uuid,
    $q$Character$q$,
    $txt$The book gives jockey Red Pollard's difficult early life and the other jockeys' stories more extensive individual treatment than the film does.$txt$,
    $txt$Hillenbrand's book traces Pollard's hard upbringing, boxing career, and the broader world of Depression-era jockeys in considerable depth. The film keeps Pollard as a central character but streamlines much of this background to balance time among Pollard, trainer Tom Smith, and owner Charles Howard.$txt$,
    false,
    $q$approved$q$
  ),

  -- Between a Rock and a Hard Place / 127 Hours
  (
    $q$3060ca4b-80de-4293-8cae-ddc3b7442e9e$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The memoir includes much more of Ralston's own extensive outdoor and mountaineering background and philosophy than the film, which focuses almost entirely on the five days trapped in the canyon.$txt$,
    $txt$Ralston's book spends considerable time establishing his history as an experienced climber and outdoorsman, including previous close calls, to contextualize both his confidence and his eventual recklessness. The film compresses this background into brief flashbacks, keeping its focus tightly on the canyon ordeal itself.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$3060ca4b-80de-4293-8cae-ddc3b7442e9e$q$::uuid,
    $q$Added Content$q$,
    $txt$The film adds vivid hallucinated and imagined sequences during Ralston's ordeal that go beyond what the memoir explicitly describes.$txt$,
    $txt$Danny Boyle's film uses stylized flashbacks, fantasies, and hallucination sequences to visualize Ralston's deteriorating mental state over the five days. While the memoir does describe becoming delirious from dehydration, the film's specific imagined sequences are a more heightened cinematic interpretation of that experience than the book's more grounded first-person account.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
