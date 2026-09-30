-- ============================================================================
-- The Divergent series: Divergent, Insurgent, Allegiant
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve. Includes
-- one user-submitted entry on the first book (marked below) alongside the
-- researched ones.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$fd61e710-a9ea-4802-9b61-02fe3b7233c3$q$, $q$Divergent$q$, $q$Veronica Roth$q$, 2011, $q$Divergent$q$, $q$Neil Burger$q$, 2014, array[$q$Science Fiction$q$, $q$Dystopian$q$, $q$Young Adult$q$], $txt$In a future Chicago divided into five factions based on virtue, a teenage girl discovers she doesn't fit into any single category, a dangerous secret in a society that demands conformity.$txt$, $q$https://covers.openlibrary.org/b/id/13274634-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/aNh4Q3iuPKDMPi2SL7GgOpiLukX.jpg$q$),
  ($q$3a1cdcba-9f0a-4cfa-a538-5e32cd30546e$q$, $q$Insurgent$q$, $q$Veronica Roth$q$, 2012, $q$The Divergent Series: Insurgent$q$, $q$Robert Schwentke$q$, 2015, array[$q$Science Fiction$q$, $q$Dystopian$q$, $q$Young Adult$q$], $txt$As war between the factions escalates, a fugitive must confront the guilt of her past and uncover the truth behind a mysterious message left by the founders of her fractured society.$txt$, $q$https://covers.openlibrary.org/b/id/7083755-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/dP5Fb6YRfzmCQtRbHOr2kO7tJW9.jpg$q$),
  ($q$2a4e4059-fe14-4130-8b15-b6b9ec536b03$q$, $q$Allegiant$q$, $q$Veronica Roth$q$, 2013, $q$The Divergent Series: Allegiant$q$, $q$Robert Schwentke$q$, 2016, array[$q$Science Fiction$q$, $q$Dystopian$q$, $q$Young Adult$q$], $txt$Venturing beyond the walls of her city for the first time, a young woman discovers the shocking truth about the experiment her whole world has been part of.$txt$, $q$https://covers.openlibrary.org/b/id/7276393-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/faq9JlF8znUGQ5p3En1W61Fi5p0.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- Divergent
  (
    $q$fd61e710-a9ea-4802-9b61-02fe3b7233c3$q$::uuid,
    $q$Character$q$,
    $txt$The books give the characters, and Tris and Four's relationship, a lot more depth than the films do.$txt$,
    $txt$This is a common reaction from readers: across the trilogy, Tris and Four's relationship reads as underdeveloped and rushed on screen compared to how gradually and convincingly it builds in the novels, and several supporting characters come across as thinner and less realized in the films than their book counterparts.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$fd61e710-a9ea-4802-9b61-02fe3b7233c3$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The initiation process and fear-landscape training are far more detailed and drawn-out in the novel.$txt$,
    $txt$Roth's book spends many chapters on the stages of Dauntless initiation -- physical training, the ranking system, and repeated fear-landscape simulations that reveal character through what each initiate is most afraid of. The film compresses this into a much shorter training montage, losing a lot of the world-building and characterization the extended version provides.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$fd61e710-a9ea-4802-9b61-02fe3b7233c3$q$::uuid,
    $q$Character$q$,
    $txt$Fellow initiates like Christina, Will, and Al get much less individual backstory on screen.$txt$,
    $txt$The novel spends real time developing Tris's fellow transfer initiates as distinct people with their own histories and motivations. The film keeps them as recognizable supporting characters but doesn't have the space to develop most of them much beyond their function in Tris's story.$txt$,
    false,
    $q$approved$q$
  ),

  -- Insurgent
  (
    $q$3a1cdcba-9f0a-4cfa-a538-5e32cd30546e$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's central "box" that only a fully Divergent person can open isn't in the book.$txt$,
    $txt$The movie invents a device left behind by the city's founders: a box that can only be opened by someone who can pass every faction's simulation, and much of the film's plot becomes a race to find a Divergent person capable of doing so. Roth's novel doesn't have this object or that plot mechanism -- the book is more focused on the escalating Erudite-Dauntless war and shifting factionless alliances, with the founders' message arriving by different means near the very end.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$3a1cdcba-9f0a-4cfa-a538-5e32cd30546e$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$Tris's guilt over killing Will drives much more of the novel than it does the film.$txt$,
    $txt$At the start of Insurgent, Tris kills her friend Will while he's under an Erudite-controlled simulation, and the book spends much of its length on her grief, guilt, and increasingly reckless, self-destructive behavior as a result. The film includes this event but doesn't dwell on its psychological weight nearly as heavily as the novel does.$txt$,
    true,
    $q$approved$q$
  ),

  -- Allegiant
  (
    $q$2a4e4059-fe14-4130-8b15-b6b9ec536b03$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The film only adapts roughly the first half of the novel, and the planned sequel covering the rest was never released in theaters.$txt$,
    $txt$Following the trend of splitting a final YA book into two films, Allegiant was meant to conclude with a second film, Ascendant. After Allegiant underperformed, the planned sequel was shelved and reportedly redirected toward a TV movie that never materialized in its original form -- meaning a large portion of Roth's novel, including its ending, has never actually been adapted on screen by the main film series.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2a4e4059-fe14-4130-8b15-b6b9ec536b03$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel alternates narrators between Tris and Four; the film doesn't use this structure.$txt$,
    $txt$Allegiant is the first book in the trilogy to split its chapters between Tris's and Tobias's first-person perspectives, after the first two books were told entirely through Tris's eyes. The film doesn't attempt to replicate this dual-narrator structure.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
