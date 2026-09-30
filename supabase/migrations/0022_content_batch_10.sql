-- ============================================================================
-- Content batch 10: The Lovely Bones, The Bourne Identity, Carrie, Stand By
-- Me (from "The Body"), High Fidelity, Bridget Jones's Diary, The Social
-- Network (from "The Accidental Billionaires"), Holes
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve. Stand By
-- Me's book cover is the "Different Seasons" collection, since "The Body"
-- was never published as a standalone book. The Social Network's book
-- cover is "The Accidental Billionaires," the source it's based on.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$bc8661de-fd9c-40b1-8afa-bc050c7aa4f7$q$, $q$The Lovely Bones$q$, $q$Alice Sebold$q$, 2002, $q$The Lovely Bones$q$, $q$Peter Jackson$q$, 2009, array[$q$Drama$q$, $q$Mystery$q$], $txt$After she is murdered, a teenage girl watches over her family and the killer who took her life from a place between Earth and Heaven, as they all try to move forward without her.$txt$, $q$https://covers.openlibrary.org/b/id/6413803-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/kIa9CyK2yiE4CAy7RJPGe7lztse.jpg$q$),
  ($q$afd127d3-86e6-4a6e-98d2-c8eda5a216fd$q$, $q$The Bourne Identity$q$, $q$Robert Ludlum$q$, 1980, $q$The Bourne Identity$q$, $q$Doug Liman$q$, 2002, array[$q$Thriller$q$], $txt$A man pulled half-dead from the ocean has no memory of who he is, only a set of extraordinary skills and a growing number of people trying to kill him.$txt$, $q$https://covers.openlibrary.org/b/id/499340-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/aP8swke3gmowbkfZ6lmNidu0y9p.jpg$q$),
  ($q$c4155cc9-f871-4ce9-97a4-8437c8c66cad$q$, $q$Carrie$q$, $q$Stephen King$q$, 1974, $q$Carrie$q$, $q$Brian De Palma$q$, 1976, array[$q$Horror$q$], $txt$A shy, bullied teenage girl with telekinetic powers is pushed past her breaking point after a cruel prank on prom night.$txt$, $q$https://covers.openlibrary.org/b/id/9256043-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/bJJ3xK4pMnfao0wfzySfC47dp8G.jpg$q$),
  ($q$54f0a42a-2eb0-4d04-8f89-6bb1bbf336cf$q$, $q$The Body$q$, $q$Stephen King$q$, 1982, $q$Stand by Me$q$, $q$Rob Reiner$q$, 1986, array[$q$Drama$q$, $q$Adventure$q$], $txt$Four young friends set out on a journey along the railroad tracks to find the body of a missing boy, in a trip that marks the end of their childhood.$txt$, $q$https://covers.openlibrary.org/b/id/14655761-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/vz0w9BSehcqjDcJOjRaCk7fgJe7.jpg$q$),
  ($q$df65f819-fc67-4552-8bbb-fca7024fba29$q$, $q$High Fidelity$q$, $q$Nick Hornby$q$, 1995, $q$High Fidelity$q$, $q$Stephen Frears$q$, 2000, array[$q$Comedy$q$, $q$Romance$q$], $txt$A record store owner obsessed with making top-five lists revisits his most memorable breakups after getting dumped by his girlfriend, trying to figure out what's wrong with his love life.$txt$, $q$https://covers.openlibrary.org/b/id/824359-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/e2LZGB62GMhv3Fo8tDZjY87I81a.jpg$q$),
  ($q$2737a1da-5980-4b09-aa28-701a310ab8db$q$, $q$Bridget Jones's Diary$q$, $q$Helen Fielding$q$, 1996, $q$Bridget Jones's Diary$q$, $q$Sharon Maguire$q$, 2001, array[$q$Comedy$q$, $q$Romance$q$], $txt$A thirty-something Londoner resolves to get her love life, career, and vices under control, chronicling the chaos in a year of diary entries.$txt$, $q$https://covers.openlibrary.org/b/id/8578467-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/olMTi7uCaec9Yr3Ar07D2SIja1G.jpg$q$),
  ($q$4c0c5d8a-a2e9-42a2-a80f-da1216628912$q$, $q$The Accidental Billionaires$q$, $q$Ben Mezrich$q$, 2009, $q$The Social Network$q$, $q$David Fincher$q$, 2010, array[$q$Drama$q$], $txt$As Facebook grows from a Harvard dorm-room project into a global phenomenon, the friendships and lawsuits left in its wake reveal the cost of its creation.$txt$, $q$https://covers.openlibrary.org/b/id/6305210-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/n0ybibhJtQ5icDqTp8eRytcIHJx.jpg$q$),
  ($q$e3c3c3e0-bbc4-4d9f-88ef-11dd054f612b$q$, $q$Holes$q$, $q$Louis Sachar$q$, 1998, $q$Holes$q$, $q$Andrew Davis$q$, 2003, array[$q$Family$q$, $q$Adventure$q$], $txt$Sent to a brutal juvenile detention camp for a crime he didn't commit, a boy is forced to dig holes in a dried-up lakebed each day, uncovering a family curse generations in the making.$txt$, $q$https://covers.openlibrary.org/b/id/19797-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/o2Dm2mcE1qW8vT0bpsJO5OMBbqa.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- The Lovely Bones
  (
    $q$bc8661de-fd9c-40b1-8afa-bc050c7aa4f7$q$::uuid,
    $q$Timeline$q$,
    $txt$The novel follows the family for years after Susie's death; the film compresses most of that into a much shorter span.$txt$,
    $txt$Sebold's book covers a long stretch of time -- Susie's sister Lindsey growing into an adult, her mother's affair and eventual return, and the slow, uneven way the family heals over years. The film narrows its focus mostly to the immediate aftermath of Susie's murder, cutting most of the book's extended later chapters.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$bc8661de-fd9c-40b1-8afa-bc050c7aa4f7$q$::uuid,
    $q$Character$q$,
    $txt$Ruth Connors has a much stranger, larger role across the whole novel than she does in the film.$txt$,
    $txt$In the book, Ruth develops an ongoing, almost mystical sensitivity to Susie's presence that continues for years and becomes a significant thread in its own right. The film reduces her to a much smaller supporting presence, losing most of that extended supernatural connection.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$bc8661de-fd9c-40b1-8afa-bc050c7aa4f7$q$::uuid,
    $q$Ending$q$,
    $txt$Mr. Harvey's death happens on a very different timescale in each version.$txt$,
    $txt$In the novel, Harvey is never caught, and evades justice for years before dying almost as an afterthought, hit by a falling icicle while stalking another potential victim long after Susie's story has otherwise moved on -- a deliberately anticlimactic, randomly-timed death underscoring the book's themes about injustice. The film moves this same icicle death much closer to the main story, staging it as a more immediate climax rather than a years-later footnote.$txt$,
    true,
    $q$approved$q$
  ),

  -- The Bourne Identity
  (
    $q$afd127d3-86e6-4a6e-98d2-c8eda5a216fd$q$::uuid,
    $q$Plot$q$,
    $txt$The novel's Cold War plot about the assassin Carlos the Jackal is completely absent from the film.$txt$,
    $txt$Ludlum's book is steeped in late-Cold-War intrigue: Bourne's amnesia and creation are tied to a CIA operation designed to draw out the legendary assassin Carlos. The film strips this out entirely, replacing it with a leaner, more modern plot about a rogue black-ops program (Treadstone) trying to eliminate Bourne after a failed mission -- Carlos doesn't appear in the film at all.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$afd127d3-86e6-4a6e-98d2-c8eda5a216fd$q$::uuid,
    $q$Character$q$,
    $txt$Marie's relationship with Bourne starts very differently in each version.$txt$,
    $txt$In the novel, Bourne essentially coerces Marie St. Jacques, a Canadian economist, into helping him, and their relationship develops from that troubling, power-imbalanced start. The film's Marie is a German drifter whose dynamic with Bourne is comparatively mutual and straightforwardly romantic from early on, without the book's kidnapping-adjacent setup.$txt$,
    false,
    $q$approved$q$
  ),

  -- Carrie
  (
    $q$c4155cc9-f871-4ce9-97a4-8437c8c66cad$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is told through fragmented "documentary" excerpts; the film is a straightforward chronological story.$txt$,
    $txt$King's book is structured as fictional newspaper clippings, court testimony, and scientific reports about the "Black Prom" incident, pieced together after the fact -- a device that reveals pieces of the ending well before the climax. The film abandons this epistolary structure entirely, telling the story in ordinary chronological order with no foreshadowing documents.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$c4155cc9-f871-4ce9-97a4-8437c8c66cad$q$::uuid,
    $q$Setting$q$,
    $txt$The book's climax describes town-wide destruction well beyond what the film shows.$txt$,
    $txt$Through its documentary-style excerpts, the novel implies Carrie's rampage causes fires and damage across large parts of Chamberlain, Maine, with a much higher reported township-wide toll. The film's destruction is visually contained mostly to the prom and Carrie's own home, a smaller-scaled climax than the book describes.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$c4155cc9-f871-4ce9-97a4-8437c8c66cad$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's famous "hand bursting from the grave" jump scare was invented by director Brian De Palma.$txt$,
    $txt$One of the most imitated endings in horror film history -- Sue Snell dreaming of Carrie's hand erupting from her grave -- has no equivalent in King's novel, which closes instead through its documentary-style aftermath material rather than a literal dream sequence.$txt$,
    true,
    $q$approved$q$
  ),

  -- The Body (Stand by Me)
  (
    $q$54f0a42a-2eb0-4d04-8f89-6bb1bbf336cf$q$::uuid,
    $q$Setting$q$,
    $txt$The story moves from King's usual Maine setting to Oregon for the film.$txt$,
    $txt$King's novella is set in his recurring fictional town of Castle Rock, Maine, like much of his other work. The film relocates the story to a fictional Castle Rock, Oregon, and was filmed largely in Northern California.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$54f0a42a-2eb0-4d04-8f89-6bb1bbf336cf$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novella is framed as a story written by its narrator, a device the film simplifies considerably.$txt$,
    $txt$"The Body" is presented as one of adult Gordie Lachance's own published stories within King's fictional multiverse, complete with references to his later writing career -- a layer of meta-fictional framing. The film keeps the basic idea of an adult Gordie looking back and writing about it, but drops most of that layered, self-referential structure for a simpler, more directly sentimental frame.$txt$,
    false,
    $q$approved$q$
  ),

  -- High Fidelity
  (
    $q$df65f819-fc67-4552-8bbb-fca7024fba29$q$::uuid,
    $q$Setting$q$,
    $txt$The story moves from London to Chicago for the film.$txt$,
    $txt$Hornby's novel is steeped in a very specific British record-shop culture and London setting. The film relocates the entire story to Chicago, Americanizing the setting, references, and supporting cast along with it.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$df65f819-fc67-4552-8bbb-fca7024fba29$q$::uuid,
    $q$Character$q$,
    $txt$The main character's surname changes along with the setting.$txt$,
    $txt$Rob is named Rob Fleming in Hornby's novel; the film renames him Rob Gordon, one of several small naming and detail changes made to fit the story's move from London to an American setting.$txt$,
    false,
    $q$approved$q$
  ),

  -- Bridget Jones's Diary
  (
    $q$2737a1da-5980-4b09-aa28-701a310ab8db$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel's running joke of daily calorie, cigarette, and alcohol tallies is largely lost in the film.$txt$,
    $txt$Every diary entry in Fielding's book opens with Bridget's obsessive daily count of calories consumed, cigarettes smoked, and units of alcohol drunk, a structural gag that runs through the entire novel. The film can only gesture at this device occasionally through voiceover rather than replicating its constant, entry-by-entry presence.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2737a1da-5980-4b09-aa28-701a310ab8db$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Bridget's parents' marital troubles get considerably more space in the book.$txt$,
    $txt$The novel spends real time on Bridget's mother's affair and the resulting chaos in her parents' marriage, playing out as its own subplot. The film compresses this family storyline significantly to keep the focus on Bridget's central romantic triangle.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Social Network (The Accidental Billionaires)
  (
    $q$4c0c5d8a-a2e9-42a2-a80f-da1216628912$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's deposition-room framing structure isn't how the book tells its story.$txt$,
    $txt$Aaron Sorkin's screenplay structures the film around flashbacks triggered by depositions from the real Winklevoss and Saverin lawsuits, cutting between the founding of Facebook and the legal fallout. Mezrich's book, already a dramatized nonfiction account leaning heavily on Eduardo Saverin's cooperation, doesn't use this same structural device.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$4c0c5d8a-a2e9-42a2-a80f-da1216628912$q$::uuid,
    $q$Character$q$,
    $txt$Erica Albright, Zuckerberg's ex-girlfriend in the film, doesn't exist in the book at all.$txt$,
    $txt$The film opens and closes on Zuckerberg's relationship with a girlfriend named Erica Albright, using her as a framing device for his motivations -- including the film's famous final shot of him refreshing her Facebook profile. She was created for the screenplay; no such character or relationship appears in Mezrich's book.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$4c0c5d8a-a2e9-42a2-a80f-da1216628912$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The book leans more sympathetic to Saverin; the film gives Zuckerberg a more complex, ambiguous portrayal.$txt$,
    $txt$Mezrich's book draws heavily on Eduardo Saverin as a source, framing much of the story from his perspective of betrayal. The film, while not unsympathetic to Saverin, invests considerably more in Zuckerberg's own inner life and motivations -- largely Sorkin's own interpretation, since Zuckerberg didn't cooperate with either the book or the film and has publicly disputed aspects of both portrayals.$txt$,
    false,
    $q$approved$q$
  ),

  -- Holes
  (
    $q$e3c3c3e0-bbc4-4d9f-88ef-11dd054f612b$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel intricately interweaves three separate timelines; the film has to present them more sequentially.$txt$,
    $txt$Sachar's book weaves together present-day Stanley at Camp Green Lake, the 1880s story of outlaw Kissin' Kate Barlow, and the generations-old story of Stanley's great-great-grandfather in Latvia, cutting between them chapter by chapter in a tightly interlaced structure. The film, written by Sachar himself and widely considered a faithful adaptation, keeps all three threads but necessarily presents them in clearer, more sequential blocks rather than the book's more intricate interleaving.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
