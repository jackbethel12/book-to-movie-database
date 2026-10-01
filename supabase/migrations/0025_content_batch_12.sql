-- ============================================================================
-- Content batch 12: One Flew Over the Cuckoo's Nest, Little Women, Atonement,
-- Room, The Fault in Our Stars
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve.
--
-- Originally also included The Shining, Jurassic Park, and The Hunger Games,
-- but those three turned out to already be in supabase/seed.sql under
-- different ids -- the duplicate-check at the time only scanned
-- supabase/migrations/*.sql and missed seed.sql. They've been removed here
-- rather than shipped and cleaned up later, since this migration was never
-- run against the live database.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$7dd5433c-e10c-4a55-993e-8f7c51c58510$q$, $q$One Flew Over the Cuckoo's Nest$q$, $q$Ken Kesey$q$, 1962, $q$One Flew Over the Cuckoo's Nest$q$, $q$Milos Forman$q$, 1975, array[$q$Drama$q$], $txt$A rebellious new patient at a repressive psychiatric hospital clashes with the tyrannical head nurse, inspiring his fellow patients to reclaim their sense of self.$txt$, $q$https://covers.openlibrary.org/b/id/9272688-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/kjWsMh72V6d8KRLV4EOoSJLT1H7.jpg$q$),
  ($q$d3d6461e-4c52-4c8a-b182-e3da4b7093b6$q$, $q$Little Women$q$, $q$Louisa May Alcott$q$, 1868, $q$Little Women$q$, $q$Greta Gerwig$q$, 2019, array[$q$Drama$q$, $q$Romance$q$], $txt$The four March sisters navigate love, ambition, and loss as they grow from girlhood to adulthood in Civil War-era New England.$txt$, $q$https://covers.openlibrary.org/b/id/15219538-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/yn5ihODtZ7ofn8pDYfxCmxh8AXI.jpg$q$),
  ($q$cd3dbf3c-fd74-41f7-9145-fd646cf6db75$q$, $q$Atonement$q$, $q$Ian McEwan$q$, 2001, $q$Atonement$q$, $q$Joe Wright$q$, 2007, array[$q$Drama$q$, $q$Romance$q$], $txt$A childhood lie told by a young girl with an overactive imagination shatters the lives of her older sister and a family friend, with consequences that echo across decades.$txt$, $q$https://covers.openlibrary.org/b/id/8381043-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/hMRIyBjPzxaSXWM06se3OcNjIQa.jpg$q$),
  ($q$f67e165f-5aaa-4c6f-84d4-97228b0cad28$q$, $q$Room$q$, $q$Emma Donoghue$q$, 2010, $q$Room$q$, $q$Lenny Abrahamson$q$, 2015, array[$q$Drama$q$], $txt$A young mother held captive in a single locked room for years raises her five-year-old son there, then must help him adjust to a vast and frightening world after their escape.$txt$, $q$https://covers.openlibrary.org/b/id/8364817-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/2hHDMeYyZjbGWn0BeNH1cTMxuM7.jpg$q$),
  ($q$0cdb8680-b6f4-4c16-988e-45c8acb7e5de$q$, $q$The Fault in Our Stars$q$, $q$John Green$q$, 2012, $q$The Fault in Our Stars$q$, $q$Josh Boone$q$, 2014, array[$q$Drama$q$, $q$Romance$q$, $q$Young Adult$q$], $txt$Two teenagers who meet in a cancer support group fall in love and travel to Amsterdam to track down the reclusive author of a novel that has shaped how they think about their own mortality.$txt$, $q$https://covers.openlibrary.org/b/id/7418786-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/kcVuktIlrn9SAN1uBmPDnocTQmF.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- One Flew Over the Cuckoo's Nest
  (
    $q$7dd5433c-e10c-4a55-993e-8f7c51c58510$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is narrated entirely by Chief Bromden, whose paranoid, hallucinatory perspective shapes everything the reader sees; the film drops this narrator and shows events objectively.$txt$,
    $txt$Kesey's book is told in the first person by Chief Bromden, a patient who pretends to be deaf and mute, and much of its imagery -- including the recurring idea of "the Combine," a machine-like force controlling society -- comes filtered through his unreliable, medicated point of view. Forman's film abandons this device entirely, presenting the ward from a conventional third-person camera, which removes a layer of ambiguity about how much of the story is Bromden's distorted perception.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$7dd5433c-e10c-4a55-993e-8f7c51c58510$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Chief Bromden's backstory about his father and their land being taken is left out of the film.$txt$,
    $txt$The novel includes significant detail about Bromden's past, including how his Native American father was worn down and exploited until the family lost their land, which the book ties to Bromden's sense of powerlessness. The film keeps Bromden as a major character but omits this backstory almost entirely.$txt$,
    false,
    $q$approved$q$
  ),

  -- Little Women
  (
    $q$d3d6461e-4c52-4c8a-b182-e3da4b7093b6$q$::uuid,
    $q$Timeline$q$,
    $txt$Gerwig's film interweaves two timelines, childhood and adulthood, while the novel proceeds in straightforward chronological order.$txt$,
    $txt$Alcott's book tells the March sisters' story in a single linear sequence, moving forward through their childhood and into adulthood. The 2019 film instead cuts back and forth between two time periods throughout, juxtaposing the sisters as children with their lives years later, a structural choice unique to this adaptation.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$d3d6461e-4c52-4c8a-b182-e3da4b7093b6$q$::uuid,
    $q$Ending$q$,
    $txt$The film adds an ambiguous, meta-textual ending about whether Jo actually marries Professor Bhaer that isn't in the book.$txt$,
    $txt$Alcott's novel has Jo marry Friedrich Bhaer in a fairly straightforward conclusion. Gerwig's film instead frames Jo's marriage as something possibly invented to satisfy a publisher who insisted the heroine be married off, intercut with Jo negotiating to keep the copyright to her book -- a layer of commentary on Alcott's own real publishing history that has no equivalent in the original text.$txt$,
    true,
    $q$approved$q$
  ),

  -- Atonement
  (
    $q$cd3dbf3c-fd74-41f7-9145-fd646cf6db75$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's five-and-a-half-minute unbroken tracking shot across the Dunkirk beach is a purely cinematic sequence without a counterpart in the prose.$txt$,
    $txt$One of the film's most famous sequences is a long, continuous tracking shot following Robbie through the chaos of soldiers awaiting evacuation at Dunkirk. McEwan's novel covers this same period of Robbie's life, but as prose narration rather than as a single sustained visual set piece -- the technique is specific to what the camera can do and has no direct literary equivalent.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$cd3dbf3c-fd74-41f7-9145-fd646cf6db75$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel spends considerably more time on Briony's years working as a wartime nurse before its final revelation.$txt$,
    $txt$McEwan's book devotes an extended section to Briony's grueling, detailed experience as a trainee nurse tending to wounded soldiers, tracing her slow, guilt-driven path toward atonement. The film compresses this period substantially to move more quickly toward its final twist.$txt$,
    false,
    $q$approved$q$
  ),

  -- Room
  (
    $q$f67e165f-5aaa-4c6f-84d4-97228b0cad28$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is narrated entirely from inside five-year-old Jack's limited understanding; the film shows events, including some involving Ma alone, that Jack never witnesses.$txt$,
    $txt$Donoghue's book is told completely in Jack's first-person voice, so the reader only ever learns what Jack himself perceives and understands about Room and, later, the outside world. The film, while still centered on Jack, includes scenes from Ma's perspective that Jack isn't present for, such as a televised interview, giving the audience information the novel's narration never provides.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$f67e165f-5aaa-4c6f-84d4-97228b0cad28$q$::uuid,
    $q$Added Content$q$,
    $txt$The film adds a television interview scene confronting Ma about her parenting choices that isn't part of the book's structure.$txt$,
    $txt$While the novel does include Ma facing public and family scrutiny after their rescue, the film crystallizes this into a specific, pointed televised interview scene in which a host questions Ma's decisions in captivity, giving the film's midsection a dramatic beat that isn't staged the same way on the page.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Fault in Our Stars
  (
    $q$0cdb8680-b6f4-4c16-988e-45c8acb7e5de$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel gives much more space to Hazel's reflections on the fictional book "An Imperial Affliction" and its deliberately unfinished ending.$txt$,
    $txt$Green's book spends substantial time on Hazel's relationship with the novel-within-the-novel, which ends mid-sentence, using it as an extended metaphor for her own fear of leaving things unresolved when she dies. The film keeps the book and the trip to find its author but can't replicate the same depth of literary interiority that the prose devotes to it.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$0cdb8680-b6f4-4c16-988e-45c8acb7e5de$q$::uuid,
    $q$Character$q$,
    $txt$Peter Van Houten's rudeness and alcoholism are portrayed with more nuance and backstory in the novel than the film has room for.$txt$,
    $txt$The book explores more of Van Houten's grief over his own daughter's death as the root of his bitterness and drinking, giving his hostile behavior toward Hazel and Augustus more context. The film retains him as a similarly unpleasant figure but compresses this backstory considerably.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
