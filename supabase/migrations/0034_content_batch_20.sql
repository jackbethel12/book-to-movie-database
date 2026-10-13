-- ============================================================================
-- Content batch 20: Trainspotting, East of Eden, Of Mice and Men,
-- Slaughterhouse-Five, The Natural, Field of Dreams (Shoeless Joe), Beloved,
-- The Joy Luck Club
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve. Checked
-- against every title in supabase/seed.sql and every migration before
-- writing this -- none of these eight overlap.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$421323e4-80d2-4aea-a328-0d06adf91f21$q$, $q$Trainspotting$q$, $q$Irvine Welsh$q$, 1993, $q$Trainspotting$q$, $q$Danny Boyle$q$, 1996, array[$q$Drama$q$, $q$Comedy$q$], $txt$A group of heroin addicts in 1980s Edinburgh cycle through squalor, petty crime, and failed attempts to get clean, narrated with dark comic relish by one friend trying to decide whether to escape it all.$txt$, $q$https://covers.openlibrary.org/b/id/6673876-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/1jUC02qsqS2NxBMFarbIhcQtazV.jpg$q$),
  ($q$e9584e23-93c6-4165-b931-f604bf98bf0b$q$, $q$East of Eden$q$, $q$John Steinbeck$q$, 1952, $q$East of Eden$q$, $q$Elia Kazan$q$, 1955, array[$q$Drama$q$], $txt$In California's Salinas Valley, a teenager desperate for his stern father's approval competes with his favored brother, while the dark secret of their mother's past threatens to repeat itself in the next generation.$txt$, $q$https://covers.openlibrary.org/b/id/11386937-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/xv1MZVIop0SQqwLUymgE5eb2LFl.jpg$q$),
  ($q$d1696fa8-ce00-464c-acd1-7f8d08a323e8$q$, $q$Of Mice and Men$q$, $q$John Steinbeck$q$, 1937, $q$Of Mice and Men$q$, $q$Gary Sinise$q$, 1992, array[$q$Drama$q$], $txt$Two displaced migrant ranch workers during the Great Depression, one sharp and protective, the other gentle but dangerously strong, dream of one day owning a small farm of their own.$txt$, $q$https://covers.openlibrary.org/b/id/14319003-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/qAHLUMZyoW3iwj2b01B2nKcePTA.jpg$q$),
  ($q$77a5f72f-d7be-48cf-b99f-d2871fff464f$q$, $q$Slaughterhouse-Five$q$, $q$Kurt Vonnegut$q$, 1969, $q$Slaughterhouse-Five$q$, $q$George Roy Hill$q$, 1972, array[$q$Science Fiction$q$, $q$Drama$q$, $q$War$q$], $txt$Unstuck in time, a World War II veteran relives his survival of the firebombing of Dresden alongside memories of being abducted by aliens who've taught him to see his whole life all at once.$txt$, $q$https://covers.openlibrary.org/b/id/12727001-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/gM2q9pGW9x2zdEMPRsXLBgTDDFH.jpg$q$),
  ($q$731b20c6-a688-4dfd-8dad-4b152604680f$q$, $q$The Natural$q$, $q$Bernard Malamud$q$, 1952, $q$The Natural$q$, $q$Barry Levinson$q$, 1984, array[$q$Drama$q$], $txt$A once-promising baseball prodigy, derailed by a mysterious shooting years earlier, gets an improbable late-career shot at stardom with a bat he carved from a lightning-struck tree.$txt$, $q$https://covers.openlibrary.org/b/id/224558-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/fwn1gYeOkS1XHKVFdNorKSIpix8.jpg$q$),
  ($q$56a62823-cfbc-4523-b9de-fa3856716ebb$q$, $q$Shoeless Joe$q$, $q$W.P. Kinsella$q$, 1982, $q$Field of Dreams$q$, $q$Phil Alden Robinson$q$, 1989, array[$q$Drama$q$, $q$Fantasy$q$], $txt$An Iowa farmer hears a mysterious voice urging him to plow under his cornfield and build a baseball diamond, setting him on a journey to reconcile with his father through the ghosts of baseball's past.$txt$, $q$https://covers.openlibrary.org/b/id/5343684-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/oeM7nAw6FVFICwUaXKCRkDsKjqO.jpg$q$),
  ($q$b38b6e8e-498a-4f1f-8a4b-d972a4e39ec5$q$, $q$Beloved$q$, $q$Toni Morrison$q$, 1987, $q$Beloved$q$, $q$Jonathan Demme$q$, 1998, array[$q$Drama$q$, $q$Horror$q$], $txt$Years after escaping slavery, a woman's home is haunted by the vengeful spirit of the baby daughter she killed to spare her from being returned to bondage, a presence that soon takes on a disturbing physical form.$txt$, $q$https://covers.openlibrary.org/b/id/8261367-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/jIoT0J2fNXXCYZst6OkKStQIPw9.jpg$q$),
  ($q$437d238d-e3a5-4a1b-b792-0694b45a075c$q$, $q$The Joy Luck Club$q$, $q$Amy Tan$q$, 1989, $q$The Joy Luck Club$q$, $q$Wayne Wang$q$, 1993, array[$q$Drama$q$], $txt$Four Chinese immigrant mothers and their American-raised daughters confront generations of secrets, expectations, and misunderstanding across interwoven stories spanning two countries and two eras.$txt$, $q$https://covers.openlibrary.org/b/id/6391793-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/s1Sk0hhVARNs7i9wqRHqbCriu8n.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- Trainspotting
  (
    $q$421323e4-80d2-4aea-a328-0d06adf91f21$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is written largely in dense Scottish dialect with chapters narrated by multiple different characters; the film centers almost entirely on Renton's voice and perspective.$txt$,
    $txt$Welsh's book rotates narration among several of the friend group and is written phonetically in thick working-class Edinburgh dialect, which makes for a demanding, fragmented reading experience. The film streamlines this into a single, much more accessible narrative voiced mainly by Ewan McGregor's Renton, with standard English dialogue.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$421323e4-80d2-4aea-a328-0d06adf91f21$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Several of the novel's darker, more disturbing episodes are toned down or cut from the film.$txt$,
    $txt$The book includes some notably bleaker and more disturbing material than what made it to screen, including darker material involving the character Begbie and other episodes the filmmakers chose to soften or omit for pacing and tone.$txt$,
    true,
    $q$approved$q$
  ),

  -- East of Eden
  (
    $q$e9584e23-93c6-4165-b931-f604bf98bf0b$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The film adapts only roughly the final third of Steinbeck's sprawling multi-generational novel.$txt$,
    $txt$Steinbeck's book spans decades and two full generations of the Trask and Hamilton families, tracing the biblical Cain-and-Abel parallel across much of California history. Kazan's film focuses almost entirely on the Cal and Aron storyline near the book's end, leaving out the bulk of the novel's earlier generational material.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$e9584e23-93c6-4165-b931-f604bf98bf0b$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The Hamilton family, who narrate much of the book and are based on Steinbeck's own ancestors, are almost entirely absent from the film.$txt$,
    $txt$Steinbeck wove his own maternal family's history into the novel through the Hamiltons, who serve as a parallel family and a narrative anchor throughout much of the book. The film, limited to the Trask family's story, drops this entire thread.$txt$,
    false,
    $q$approved$q$
  ),

  -- Of Mice and Men
  (
    $q$d1696fa8-ce00-464c-acd1-7f8d08a323e8$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$Steinbeck originally wrote the novella in a play-like structure meant for easy stage adaptation, which the film's more traditional cinematic style departs from somewhat.$txt$,
    $txt$The book is famously structured almost like a stage play, confined mostly to a few key locations with heavy reliance on dialogue, which Steinbeck intended to make it easy to adapt for the theater. The film opens up the material visually with more cinematic location work than the novella's deliberately contained structure suggests.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$d1696fa8-ce00-464c-acd1-7f8d08a323e8$q$::uuid,
    $q$Added Content$q$,
    $txt$The film adds an opening sequence showing George and Lennie fleeing Weed that is only described after the fact in the book.$txt$,
    $txt$The novella begins with George and Lennie already arriving at the new ranch, with the incident that forced them to flee their previous job only explained later through dialogue. The film instead opens by dramatizing that earlier incident directly, showing audiences something the book only has characters describe in retrospect.$txt$,
    true,
    $q$approved$q$
  ),

  -- Slaughterhouse-Five
  (
    $q$77a5f72f-d7be-48cf-b99f-d2871fff464f$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is narrated with frequent direct authorial intrusion, including Vonnegut inserting himself into the story, which the film doesn't replicate.$txt$,
    $txt$Vonnegut's book opens with a chapter establishing his own voice and personal connection to the Dresden bombing, and periodically breaks the fourth wall elsewhere, famously noting "And so it goes" after every death. The film adapts the plot fairly faithfully but necessarily loses this layer of direct authorial presence and commentary.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$77a5f72f-d7be-48cf-b99f-d2871fff464f$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book's recurring references to Vonnegut's own other novels and characters, especially the science fiction author Kilgore Trout, are reduced in the film.$txt$,
    $txt$Vonnegut's novel is full of self-referential touches connecting it to his broader body of work, including appearances by his recurring fictional author Kilgore Trout. The film keeps the core Billy Pilgrim story but trims back much of this wider literary web of references.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Natural
  (
    $q$731b20c6-a688-4dfd-8dad-4b152604680f$q$::uuid,
    $q$Ending$q$,
    $txt$The film gives Roy Hobbs a triumphant, almost mythic final home run; the novel's ending is considerably darker and more tragic.$txt$,
    $txt$Malamud's novel ends with Hobbs striking out in his final at-bat after being caught up in a bribery scandal, a bleak conclusion about corruption and wasted talent. The film famously reverses this into one of cinema's most iconic triumphant endings, with Hobbs instead hitting a dramatic game-winning home run that shatters the stadium lights.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$731b20c6-a688-4dfd-8dad-4b152604680f$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is a much darker meditation on corruption and squandered potential, drawing on Arthurian legend; the film is a more straightforward, uplifting sports fable.$txt$,
    $txt$Malamud's book uses baseball as a vehicle for a morally ambiguous, almost mythic tragedy about a flawed hero undone by his own weaknesses, with clear parallels to Arthurian legend. The film retains some of this mythic imagery but reshapes the story into a far more optimistic, redemptive sports narrative overall.$txt$,
    false,
    $q$approved$q$
  ),

  -- Shoeless Joe / Field of Dreams
  (
    $q$56a62823-cfbc-4523-b9de-fa3856716ebb$q$::uuid,
    $q$Character$q$,
    $txt$The reclusive author character Ray seeks out is J.D. Salinger in the novel, but was changed to a fictional writer named Terence Mann for the film.$txt$,
    $txt$Kinsella's novel actually has Ray Kinsella track down the real author J.D. Salinger as part of his journey. Because Salinger was famously litigious about his public portrayal, the film replaced him with an entirely fictional reclusive novelist, Terence Mann, to avoid using the real author without permission.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$56a62823-cfbc-4523-b9de-fa3856716ebb$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel includes a subplot about Ray's estranged twin brother Richard, which the film leaves out entirely.$txt$,
    $txt$Kinsella's book gives real weight to Ray's complicated relationship with his twin brother Richard, who left the family farm years earlier and whose reappearance ties into the novel's themes about fathers, brothers, and reconciliation. The film drops this subplot completely, keeping its family focus narrowed to Ray, his wife, and his own father.$txt$,
    false,
    $q$approved$q$
  ),

  -- Beloved
  (
    $q$b38b6e8e-498a-4f1f-8a4b-d972a4e39ec5$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$Morrison's novel uses a fragmented, nonlinear structure that withholds the full truth of what happened to Beloved for a long stretch of the book; the film reveals events more directly.$txt$,
    $txt$The book slowly circles around the central trauma at its core, revealing the truth about Sethe's past in fragments and flashbacks that build meaning gradually across the novel. The film, while still nonlinear in places, is more direct and explicit earlier on about what happened, losing some of the novel's deliberate narrative withholding.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$b38b6e8e-498a-4f1f-8a4b-d972a4e39ec5$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel spends much more time on the wider community of formerly enslaved people around Sethe and on Paul D's own backstory than the film does.$txt$,
    $txt$Morrison's book gives considerable depth to the surrounding Black community in Cincinnati and to Paul D's own history of enslavement and escape, including the horrific "sweat box" chain-gang sequence. The film, while keeping Paul D as a major character, compresses much of this additional context.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Joy Luck Club
  (
    $q$437d238d-e3a5-4a1b-b792-0694b45a075c$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is structured as sixteen interlocking short stories narrated by different mothers and daughters; the film weaves these into a more continuous ensemble narrative.$txt$,
    $txt$Tan's book is organized into distinct first-person narrated sections, each telling a self-contained story from one character's point of view, loosely connected through the mahjong club. The film adapts this into a more conventional interwoven ensemble drama, cutting between the different families' stories within scenes rather than keeping them as separate narrated sections.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$437d238d-e3a5-4a1b-b792-0694b45a075c$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Several of the mothers' specific backstories in prewar and wartime China are condensed in the film to fit all four family stories into one movie.$txt$,
    $txt$The novel gives each mother's harrowing history in China its own extended, detailed telling. With four parallel mother-daughter pairs to cover in a single film, several of these backstories, while still present, are necessarily trimmed compared to the fuller versions in the book.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
