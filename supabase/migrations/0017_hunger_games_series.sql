-- ============================================================================
-- Content batch: rest of the Hunger Games series
-- ============================================================================
-- The original seed already covers the first book/film. This adds Catching
-- Fire, Mockingjay, and the prequel Ballad of Songbirds and Snakes. Sunrise
-- on the Reaping's film adaptation is not out yet (release date 2026-11-18
-- per TMDB, still in the future as of this migration), so it's deliberately
-- left out -- there's nothing to compare against yet.
--
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$2d61263f-a5b2-46ca-a607-004a941619a0$q$, $q$Catching Fire$q$, $q$Suzanne Collins$q$, 2009, $q$The Hunger Games: Catching Fire$q$, $q$Francis Lawrence$q$, 2013, array[$q$Dystopian$q$, $q$Young Adult$q$], $txt$After winning the Hunger Games, Katniss Everdeen finds herself at the center of a growing rebellion, forced back into the arena for a deadly twist on the Games that pits past victors against each other.$txt$, $q$https://covers.openlibrary.org/b/id/12646539-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/vrQHDXjVmbYzadOXQ0UaObunoy2.jpg$q$),
  ($q$12f4ca92-d4de-4000-ac0c-a46df63ee5d6$q$, $q$Mockingjay$q$, $q$Suzanne Collins$q$, 2010, $q$The Hunger Games: Mockingjay - Part 2$q$, $q$Francis Lawrence$q$, 2015, array[$q$Dystopian$q$, $q$Young Adult$q$], $txt$With the Capitol and the districts locked in open war, Katniss becomes the reluctant symbol of the rebellion as she fights to save the people she loves and end President Snow's rule for good.$txt$, $q$https://covers.openlibrary.org/b/id/12646459-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/lImKHDfExAulp16grYm8zD5eONE.jpg$q$),
  ($q$ef5bead4-2c2a-484d-99ab-f60c410225ec$q$, $q$The Ballad of Songbirds and Snakes$q$, $q$Suzanne Collins$q$, 2020, $q$The Hunger Games: The Ballad of Songbirds & Snakes$q$, $q$Francis Lawrence$q$, 2023, array[$q$Dystopian$q$, $q$Young Adult$q$], $txt$Decades before he becomes the tyrant who rules Panem, a young Coriolanus Snow mentors a tribute from District 12 for the tenth Hunger Games, a choice that will shape the man he becomes.$txt$, $q$https://covers.openlibrary.org/b/id/14421833-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/mBaXZ95R2OxueZhvQbcEWy2DqyO.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- Catching Fire
  (
    $q$2d61263f-a5b2-46ca-a607-004a941619a0$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Bonnie and Twill, two escaped District 8 women Katniss meets in the woods, are cut from the film.$txt$,
    $txt$In the book, Katniss and Gale run into these two runaways while hunting outside the district fence, and their account of unrest in District 8 is one of Katniss's first real windows into the growing rebellion beyond her own district. The film leaves them out entirely, folding that same information into other scenes instead.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2d61263f-a5b2-46ca-a607-004a941619a0$q$::uuid,
    $q$Character$q$,
    $txt$Darius the Peacekeeper's fate is shown in more detail in the book.$txt$,
    $txt$Darius, who's sympathetic to Katniss and Gale, is punished by the Capitol for it -- in the novel this is described more explicitly, including his transformation into a mute Avox servant. The film touches on his disappearance and implied fate more briefly.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$2d61263f-a5b2-46ca-a607-004a941619a0$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$Katniss's trauma from the first Games is explored much more through interior narration in the book.$txt$,
    $txt$Since the novel is told entirely from inside Katniss's head, it spends a lot of time on her nightmares, hypervigilance, and growing paranoia about the Capitol -- what would now be recognized as PTSD. The film conveys this through performance and imagery, but naturally can't replicate the same sustained first-person access to her state of mind.$txt$,
    false,
    $q$approved$q$
  ),

  -- Mockingjay
  (
    $q$12f4ca92-d4de-4000-ac0c-a46df63ee5d6$q$::uuid,
    $q$Added Content$q$,
    $txt$The single novel was split into two films, which required padding out the first half with material not in the book.$txt$,
    $txt$Mockingjay Part 1 covers roughly the first half of the novel -- District 13, the propo filming, and Peeta's rescue and hijacked state -- while Part 2 covers the invasion of the Capitol and the ending. To make Part 1 work as a complete film on its own, the movies add extra scenes (an expanded tour of District 13, more of the propaganda-filming process) that are only briefly summarized or entirely absent in Collins's book.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$12f4ca92-d4de-4000-ac0c-a46df63ee5d6$q$::uuid,
    $q$Character$q$,
    $txt$Effie Trinket barely appears in the novel, but stays a major character throughout the films.$txt$,
    $txt$In the book, Effie is essentially absent from Mockingjay -- she's left behind in the Capitol's fallout and isn't part of the District 13 story in any meaningful way. The films keep her present as an active character working alongside Katniss's team throughout, a significant expansion of her role that carries through all four movies.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$12f4ca92-d4de-4000-ac0c-a46df63ee5d6$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel's epilogue spends much more time on Katniss's long-term trauma than the film does.$txt$,
    $txt$Both versions jump forward years later to show Katniss and Peeta with children, but the book lingers on her ongoing grief, nightmares, and the specific coping rituals she's built to survive it. The film's version of this coda is considerably shorter and less introspective.$txt$,
    true,
    $q$approved$q$
  ),

  -- The Ballad of Songbirds and Snakes
  (
    $q$ef5bead4-2c2a-484d-99ab-f60c410225ec$q$::uuid,
    $q$Timeline$q$,
    $txt$The novel's third section, set in District 12, gets noticeably less time in the film than the first two.$txt$,
    $txt$Collins's book is split into three clearly weighted parts -- "The Mentor," "The Prize," and "The Peacekeeper" -- with the District 12 section giving Snow's deepening relationship with Lucy Gray and his unraveling morality a lot of room to develop. The film covers the same events but compresses this final stretch more than the earlier acts, a pacing choice several reviews noted at the time.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$ef5bead4-2c2a-484d-99ab-f60c410225ec$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The book's close, self-justifying narration of Snow's thinking is necessarily flattened on screen.$txt$,
    $txt$Told from deep inside Snow's perspective, the novel spends a lot of time on his class anxiety, resentment, and the rationalizations he builds for his own choices -- letting the reader watch him talk himself into becoming the man he'll grow up to be. The film conveys his arc through performance and plot rather than sustained access to that internal reasoning.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$ef5bead4-2c2a-484d-99ab-f60c410225ec$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Snow and Sejanus's time together as Peacekeepers in the District 12 barracks is more detailed in the book.$txt$,
    $txt$The novel spends real time on the day-to-day friction between Snow and Sejanus Plinth once they're stationed together as Peacekeepers, building out their contrasting values before the story's later confrontation between them. The film keeps the core of their dynamic but trims a fair amount of this barracks-set material.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
