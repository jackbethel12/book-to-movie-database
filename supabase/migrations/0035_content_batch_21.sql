-- ============================================================================
-- Content batch 21 (literary prestige adaptations): The Remains of the Day,
-- Never Let Me Go, The Reader, The English Patient, Cold Mountain, The Hours,
-- Doctor Zhivago, The Bridges of Madison County
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve. The Reader's
-- book_cover_url is from its original German edition, "Der Vorleser" --
-- the English-title edition has no cover on file in Open Library. Checked
-- against every title in supabase/seed.sql and every migration before
-- writing this -- none of these eight overlap.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$f97187f5-9001-4aa0-b1a1-7727d7eaf014$q$, $q$The Remains of the Day$q$, $q$Kazuo Ishiguro$q$, 1989, $q$The Remains of the Day$q$, $q$James Ivory$q$, 1993, array[$q$Drama$q$, $q$Romance$q$], $txt$A devoted English butler looks back on decades of loyal service to a lord with Nazi sympathies, and on the unspoken feelings for the housekeeper he was too dutiful to ever act on.$txt$, $q$https://covers.openlibrary.org/b/id/95742-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/uDGDtqSvuch324WnM7Ukdp1bCAQ.jpg$q$),
  ($q$f18bcceb-9a7a-41aa-af24-53316779bfa5$q$, $q$Never Let Me Go$q$, $q$Kazuo Ishiguro$q$, 2005, $q$Never Let Me Go$q$, $q$Mark Romanek$q$, 2010, array[$q$Science Fiction$q$, $q$Drama$q$, $q$Romance$q$], $txt$Three friends raised together at an idyllic English boarding school slowly come to understand the dark purpose for which they were actually created, and the limited future that awaits them.$txt$, $q$https://covers.openlibrary.org/b/id/1047334-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/8F0r5ng9Fp60OhzQfR5v33fppq.jpg$q$),
  ($q$4efcdd6a-bcba-475f-87d0-b18f53f04058$q$, $q$The Reader$q$, $q$Bernhard Schlink$q$, 1995, $q$The Reader$q$, $q$Stephen Daldry$q$, 2008, array[$q$Drama$q$, $q$Romance$q$], $txt$A teenage boy in postwar Germany begins a secret affair with an older woman who loves hearing him read aloud, only to encounter her again years later as a law student observing a war crimes trial.$txt$, $q$https://covers.openlibrary.org/b/id/998445-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/r0WURbmnhgKeBpHcpDULBgRedQM.jpg$q$),
  ($q$7523403b-192b-4106-8b03-f17b8e7abc03$q$, $q$The English Patient$q$, $q$Michael Ondaatje$q$, 1992, $q$The English Patient$q$, $q$Anthony Minghella$q$, 1996, array[$q$Drama$q$, $q$Romance$q$, $q$War$q$], $txt$In the final days of World War II, a severely burned, amnesiac patient's identity slowly emerges through the memories of a doomed desert love affair, as the nurse caring for him confronts her own losses.$txt$, $q$https://covers.openlibrary.org/b/id/417585-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/8eHHqMg8qEYtVw8LQLygsHXSR2q.jpg$q$),
  ($q$161066dd-5fb8-476e-b33b-99efc277b3dc$q$, $q$Cold Mountain$q$, $q$Charles Frazier$q$, 1997, $q$Cold Mountain$q$, $q$Anthony Minghella$q$, 2003, array[$q$Drama$q$, $q$Romance$q$, $q$War$q$], $txt$A wounded Confederate deserter undertakes a grueling journey across a war-ravaged South to return to the woman he loves, while she fights to survive alone on their failing mountain farm.$txt$, $q$https://covers.openlibrary.org/b/id/827781-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/j0AJeeR5CQPDFh0otyWyCWREHO8.jpg$q$),
  ($q$5f3f1f70-81d7-4cd6-8b47-96e402674d61$q$, $q$The Hours$q$, $q$Michael Cunningham$q$, 1998, $q$The Hours$q$, $q$Stephen Daldry$q$, 2002, array[$q$Drama$q$], $txt$The lives of three women in three different eras -- Virginia Woolf writing "Mrs. Dalloway," a 1950s housewife reading it, and a modern woman living out its themes -- intersect across decades of quiet desperation.$txt$, $q$https://covers.openlibrary.org/b/id/223032-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/4myDtowDJQPQnkEDB1IWGtJR1Fo.jpg$q$),
  ($q$c9bccedb-7179-42e4-aadb-55dee9a8ca15$q$, $q$Doctor Zhivago$q$, $q$Boris Pasternak$q$, 1957, $q$Doctor Zhivago$q$, $q$David Lean$q$, 1965, array[$q$Drama$q$, $q$Romance$q$, $q$War$q$], $txt$A physician and poet's life and loves are torn apart by the upheaval of the Russian Revolution and Civil War, as he's caught between his wife and the woman who becomes the great love of his life.$txt$, $q$https://covers.openlibrary.org/b/id/14896503-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/r0Iv2BiCFYDnzc6uU1q3AJ56igT.jpg$q$),
  ($q$969fdf8c-25a1-491d-93ef-9643be8e620e$q$, $q$The Bridges of Madison County$q$, $q$Robert James Waller$q$, 1992, $q$The Bridges of Madison County$q$, $q$Clint Eastwood$q$, 1995, array[$q$Drama$q$, $q$Romance$q$], $txt$Over four days while her family is away, an Iowa farmwife falls into a brief, consuming affair with a traveling photographer, a choice that shapes the rest of both their lives.$txt$, $q$https://covers.openlibrary.org/b/id/490280-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/aCBrhOQjhG397GLkEZ49zReQEKX.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- The Remains of the Day
  (
    $q$f97187f5-9001-4aa0-b1a1-7727d7eaf014$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is narrated entirely by Stevens in a tightly controlled, repressed first-person voice that constantly undercuts itself, which the film can only partly replicate.$txt$,
    $txt$Ishiguro's book is a masterclass in unreliable narration, with Stevens's prim, formal narration repeatedly revealing more than he consciously intends about his own suppressed feelings. The film conveys a great deal of this through Anthony Hopkins's performance, but necessarily loses some of the novel's layered, ironic narrative voice.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$f97187f5-9001-4aa0-b1a1-7727d7eaf014$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel gives more extended attention to Lord Darlington's political naivety and his role hosting pro-appeasement meetings with Nazi sympathizers.$txt$,
    $txt$Ishiguro's book spends considerable time on the specific political meetings and maneuvering that implicate Darlington in enabling Nazi Germany, grounding Stevens's later shame in detailed historical context. The film keeps the broad strokes of Darlington's disgrace but compresses much of this political detail.$txt$,
    false,
    $q$approved$q$
  ),

  -- Never Let Me Go
  (
    $q$f18bcceb-9a7a-41aa-af24-53316779bfa5$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is narrated entirely by Kathy in a quiet, retrospective first-person voice, slowly revealing details about the clones' world; the film is more direct and visual about the premise earlier on.$txt$,
    $txt$Ishiguro's book withholds the full nature of what the students are and what awaits them, letting the truth surface gradually through Kathy's measured, understated narration. The film establishes the premise more directly and visually fairly early on, trading some of the novel's slow-dawning dread for clarity.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$f18bcceb-9a7a-41aa-af24-53316779bfa5$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel spends much more time on the rumored "deferral" process and the students' theories and hopes around it than the film does.$txt$,
    $txt$The book dwells extensively on a rumor among the students that true love might earn them a deferral from their fate, and on Kathy and Tommy's search for proof of this. The film keeps this plot thread but compresses the lengthy, hope-driven investigation that takes up a significant portion of the novel.$txt$,
    true,
    $q$approved$q$
  ),

  -- The Reader
  (
    $q$4efcdd6a-bcba-475f-87d0-b18f53f04058$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel spends much more time on Michael's adult life as a law student and later lawyer, and on his difficulty forming relationships, than the film does.$txt$,
    $txt$Schlink's book dedicates substantial space to how the affair with Hanna continues to shape Michael's adult psychology, including his failed marriage and his career, narrated from his own reflective adult perspective. The film keeps Michael's adult timeline but moves through it more briskly to focus on the trial and the tapes he sends Hanna in prison.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$4efcdd6a-bcba-475f-87d0-b18f53f04058$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is narrated entirely by Michael, filtering Hanna and the trial through his perspective and guilt; the film occasionally shows scenes Michael himself never witnesses.$txt$,
    $txt$Schlink's book keeps the reader locked inside Michael's own retrospective account throughout. The film takes some liberties with this, showing a handful of scenes -- including moments involving Hanna alone -- that fall outside what Michael's narration in the novel ever actually describes.$txt$,
    false,
    $q$approved$q$
  ),

  -- The English Patient
  (
    $q$7523403b-192b-4106-8b03-f17b8e7abc03$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel gives much more weight to Kip, the Sikh bomb-disposal sapper, and his own arc and eventual disillusionment, than the film does.$txt$,
    $txt$Ondaatje's book treats Kip as a fully developed central character whose growing alienation, especially after the atomic bombings of Japan, forms an important thematic counterpoint to the central romance. The film retains Kip and his relationship with Hana but gives considerably less narrative weight to his perspective and eventual departure than the novel does.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$7523403b-192b-4106-8b03-f17b8e7abc03$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is structured in fragmented, nonlinear pieces across all four characters more evenly than the film, which centers much more heavily on the desert romance.$txt$,
    $txt$Ondaatje's book moves fluidly among the perspectives of all four characters at the villa, giving Hana, Kip, and Caravaggio's own inner lives comparable space to the patient's memories. The film restructures the story to foreground the Almásy-Katharine romance as its clear emotional center, with the other characters more in a supporting role.$txt$,
    false,
    $q$approved$q$
  ),

  -- Cold Mountain
  (
    $q$161066dd-5fb8-476e-b33b-99efc277b3dc$q$::uuid,
    $q$Ending$q$,
    $txt$Both versions end tragically, but the novel is more ambiguous and restrained about the aftermath than the film's more explicit coda.$txt$,
    $txt$Frazier's novel handles the aftermath of the story's ending with a spare, understated final chapter that leaves much unspoken. The film adds a more explicit epilogue sequence showing the years afterward in more detail than the book's quieter, more withholding conclusion provides.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$161066dd-5fb8-476e-b33b-99efc277b3dc$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's episodic structure includes several extended encounters and characters during Inman's journey home that the film compresses or cuts.$txt$,
    $txt$Frazier's book is structured as a long, Odyssey-like journey with numerous self-contained episodes and characters Inman meets along the way, many of which develop at considerable length. The film keeps the overall shape of the journey but trims or combines several of these episodes to fit a feature runtime.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Hours
  (
    $q$5f3f1f70-81d7-4cd6-8b47-96e402674d61$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel's prose style directly imitates Virginia Woolf's own stream-of-consciousness technique, something the film conveys mainly through editing and structure instead.$txt$,
    $txt$Cunningham's book is written in a style that deliberately echoes "Mrs. Dalloway" itself, with long, flowing interior sentences across all three timelines. The film translates this literary device into cinematic terms -- crosscutting between the three women's days -- rather than attempting to replicate the prose style directly.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$5f3f1f70-81d7-4cd6-8b47-96e402674d61$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel includes more detail about Richard's writing career and his relationship with Clarissa before the events of the present day.$txt$,
    $txt$Cunningham's book spends more time establishing the history between Clarissa and Richard, including their earlier lives and his literary career, before the present-day storyline begins. The film compresses much of this backstory, relying more on implication and performance to convey their history.$txt$,
    false,
    $q$approved$q$
  ),

  -- Doctor Zhivago
  (
    $q$c9bccedb-7179-42e4-aadb-55dee9a8ca15$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is as much a meditation on poetry, philosophy, and the individual's place in history as it is a love story; the film foregrounds the romance far more heavily.$txt$,
    $txt$Pasternak's book, written by a poet, interweaves Zhivago's own poetry and extended philosophical reflection on art and history throughout, with the central romance as one thread among many. David Lean's film is famous as a sweeping romantic epic, and while it retains the historical backdrop, it centers the love story much more than the book's broader literary and philosophical scope.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$c9bccedb-7179-42e4-aadb-55dee9a8ca15$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's large collection of Zhivago's own poems, included as an appendix, has no equivalent in the film.$txt$,
    $txt$Pasternak's book ends with a selection of poems attributed to Yuri Zhivago himself, reinforcing the novel's conceit that he was a significant poet as well as a physician. The film, as a visual medium, has no direct way to include this literary appendix and simply doesn't attempt to.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Bridges of Madison County
  (
    $q$969fdf8c-25a1-491d-93ef-9643be8e620e$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is framed as a true story uncovered by the children after their mother's death, told through her journals; the film shows much more of the affair directly rather than through that framing.$txt$,
    $txt$Waller's book opens with a framing device presenting itself as journalist-uncovered real events, pieced together from Francesca's diaries after her death, and returns to this frame periodically. The film keeps a version of the children-discovering-the-diaries frame but spends most of its runtime directly dramatizing the affair itself rather than filtering it through found documents.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$969fdf8c-25a1-491d-93ef-9643be8e620e$q$::uuid,
    $q$Character$q$,
    $txt$Robert Kincaid's internal philosophy and backstory as a wandering photographer are given much more space in the novel's prose than the film has room for.$txt$,
    $txt$Waller's book includes extended passages of Kincaid's own reflective, philosophical narration about his rootless way of life and worldview. The film, carried largely by Clint Eastwood's performance, conveys his character more through behavior and dialogue than through the novel's more explicit interior monologue.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
