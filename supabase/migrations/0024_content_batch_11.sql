-- ============================================================================
-- Content batch 11: Twilight, The Great Gatsby, Schindler's Ark (Schindler's
-- List), Into the Wild, The Silver Linings Playbook, The Help, Moneyball,
-- The Perks of Being a Wallflower
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$215a4d62-cefa-4f8d-bd99-546506766537$q$, $q$Twilight$q$, $q$Stephenie Meyer$q$, 2005, $q$Twilight$q$, $q$Catherine Hardwicke$q$, 2008, array[$q$Fantasy$q$, $q$Romance$q$, $q$Young Adult$q$], $txt$A teenage girl who moves to a small, rainy town falls for a mysterious, alluring classmate who turns out to be a vampire, drawing her into a world of danger she never knew existed.$txt$, $q$https://covers.openlibrary.org/b/id/12641977-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/3Gkb6jm6962ADUPaCBqzz9CTbn9.jpg$q$),
  ($q$b88e9629-69d8-4aac-962f-2309f2322e5f$q$, $q$The Great Gatsby$q$, $q$F. Scott Fitzgerald$q$, 1925, $q$The Great Gatsby$q$, $q$Baz Luhrmann$q$, 2013, array[$q$Drama$q$, $q$Romance$q$], $txt$A young man is drawn into the lavish, reckless world of his mysterious millionaire neighbor and his obsessive pursuit of a lost love.$txt$, $q$https://covers.openlibrary.org/b/id/14972791-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/nimh1rrDDLhgpG8XAYoUZXHYwb6.jpg$q$),
  ($q$b4f3be7f-a66c-41b5-8be3-0ba26352ae7d$q$, $q$Schindler's Ark$q$, $q$Thomas Keneally$q$, 1982, $q$Schindler's List$q$, $q$Steven Spielberg$q$, 1993, array[$q$Drama$q$], $txt$A German businessman in Nazi-occupied Poland gradually risks everything to save more than a thousand Jewish refugees by employing them in his factories.$txt$, $q$https://covers.openlibrary.org/b/id/6458534-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg$q$),
  ($q$bb295ddb-425d-4d08-8967-3b9b0c10e58b$q$, $q$Into the Wild$q$, $q$Jon Krakauer$q$, 1996, $q$Into the Wild$q$, $q$Sean Penn$q$, 2007, array[$q$Drama$q$, $q$Adventure$q$], $txt$After graduating college, a young man gives away his savings and abandons his possessions to hitchhike across America, chasing a solitary life in the Alaskan wilderness.$txt$, $q$https://covers.openlibrary.org/b/id/1377482-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/jnLnLYP5pGDfri04gxtAqAvkHMw.jpg$q$),
  ($q$e883ec35-fdd5-4f90-bee1-6cd225a7d4f6$q$, $q$The Silver Linings Playbook$q$, $q$Matthew Quick$q$, 2008, $q$Silver Linings Playbook$q$, $q$David O. Russell$q$, 2012, array[$q$Drama$q$, $q$Comedy$q$], $txt$After a stint in a psychiatric hospital, a man moves back in with his parents determined to win back his estranged wife, until an unconventional new friendship changes his plans.$txt$, $q$https://covers.openlibrary.org/b/id/7093445-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/fhHB1uvfFKKFbj6bTKE8xdtsjKi.jpg$q$),
  ($q$6185531a-671b-4b29-83e3-12e890f035a1$q$, $q$The Help$q$, $q$Kathryn Stockett$q$, 2009, $q$The Help$q$, $q$Tate Taylor$q$, 2011, array[$q$Drama$q$], $txt$In 1960s Mississippi, a young white woman and a group of Black maids secretly collaborate on a book exposing the truth about their lives working for the town's white families.$txt$, $q$https://covers.openlibrary.org/b/id/8387264-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/3kmfoWWEc9Vtyuaf9v5VipRgdjx.jpg$q$),
  ($q$8354fce3-8ad0-4e62-b127-4e764c6ef3a2$q$, $q$Moneyball$q$, $q$Michael Lewis$q$, 2003, $q$Moneyball$q$, $q$Bennett Miller$q$, 2011, array[$q$Drama$q$], $txt$The general manager of a small-market baseball team teams up with a young statistician to build a winning roster using data instead of tradition, upending how the game is played.$txt$, $q$https://covers.openlibrary.org/b/id/467718-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/4yIQq1e6iOcaZ5rLDG3lZBP3j7a.jpg$q$),
  ($q$ec95d00c-2863-46cf-acda-57c48aca19c6$q$, $q$The Perks of Being a Wallflower$q$, $q$Stephen Chbosky$q$, 1999, $q$The Perks of Being a Wallflower$q$, $q$Stephen Chbosky$q$, 2012, array[$q$Drama$q$, $q$Young Adult$q$], $txt$A shy, introspective high school freshman is drawn out of his isolation by two seniors who introduce him to friendship, first love, and the courage to participate in his own life.$txt$, $q$https://covers.openlibrary.org/b/id/14315052-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/aKCvdFFF5n80P2VdS7d8YBwbCjh.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- Twilight
  (
    $q$215a4d62-cefa-4f8d-bd99-546506766537$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel's constant first-person internal monologue is far more obsessive and interior than the film can convey.$txt$,
    $txt$Meyer's book is told entirely from inside Bella's head, dwelling at length on her feelings for Edward in a way that drives most of the prose. The film, limited to dialogue and performance, externalizes much of this, giving the relationship a more restrained, observed quality than the book's saturated interiority.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$215a4d62-cefa-4f8d-bd99-546506766537$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Bella's captivity and torment at the hands of James is a much longer ordeal in the book.$txt$,
    $txt$The novel spends several chapters on James luring and tormenting Bella before the climax at the ballet studio. The film compresses this significantly to keep the pacing tight heading into its final act.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$215a4d62-cefa-4f8d-bd99-546506766537$q$::uuid,
    $q$Character$q$,
    $txt$Book-Bella's self-deprecating, clumsy narration reads differently than Kristen Stewart's more reserved film performance.$txt$,
    $txt$Bella's own narration frequently jokes about her own clumsiness and ordinariness in a fairly chatty, self-aware voice. The film's performance leans more understated and withdrawn, giving the character a noticeably different tone than the book's voice suggests.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Great Gatsby
  (
    $q$b88e9629-69d8-4aac-962f-2309f2322e5f$q$::uuid,
    $q$Added Content$q$,
    $txt$The film adds a framing device of Nick writing the story from inside a sanatorium that isn't in the novel.$txt$,
    $txt$Luhrmann's film opens with Nick Carraway in treatment for alcoholism and depression, writing the story down as therapy, with pages of the text appearing on screen as he types. Fitzgerald's novel has no such explicit frame -- Nick simply narrates events in retrospect, with nothing in the book placing him in a sanatorium.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$b88e9629-69d8-4aac-962f-2309f2322e5f$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The film's deliberately modern soundtrack has no equivalent "sound" in the novel.$txt$,
    $txt$Luhrmann's film pairs its 1920s setting with a soundtrack of contemporary hip-hop and pop music, executive produced by Jay-Z, an intentionally anachronistic stylistic choice. The novel, naturally, has no period-specific or modern musical identity attached to it at all -- this is purely a film-specific interpretive decision.$txt$,
    false,
    $q$approved$q$
  ),

  -- Schindler's Ark (Schindler's List)
  (
    $q$b4f3be7f-a66c-41b5-8be3-0ba26352ae7d$q$::uuid,
    $q$Character$q$,
    $txt$Itzhak Stern in the film is a composite drawn from several real people described in the book.$txt$,
    $txt$Keneally's book, built from extensive interviews with Schindler survivors, describes several different accountants and assistants who worked alongside Oskar Schindler over the years. The film consolidates many of their functions into the single character of Itzhak Stern for narrative clarity.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$b4f3be7f-a66c-41b5-8be3-0ba26352ae7d$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's black-and-white cinematography with selective color is a purely cinematic device with no counterpart in the book.$txt$,
    $txt$Spielberg shot the film almost entirely in black and white, with one notable exception: a small girl in a red coat, visible in color amid the monochrome, in a scene depicting the liquidation of the Krakow ghetto. As a prose work, Keneally's book naturally has no visual "color" device of this kind -- it's an interpretive choice specific to the film.$txt$,
    true,
    $q$approved$q$
  ),

  -- Into the Wild
  (
    $q$bb295ddb-425d-4d08-8967-3b9b0c10e58b$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Krakauer's own personal experience as a parallel to McCandless's story is left out of the film.$txt$,
    $txt$The book includes a chapter where Krakauer recounts his own reckless solo climbing expedition as a young man, drawing an explicit personal parallel to the impulses that drove McCandless. The film, focused on dramatizing McCandless's own journey, doesn't include this journalistic self-insertion.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$bb295ddb-425d-4d08-8967-3b9b0c10e58b$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The book is a work of investigative reconstruction; the film dramatizes the same events as a direct, linear narrative.$txt$,
    $txt$Since Krakauer never met McCandless, the book pieces his story together after the fact from interviews, forensic evidence, and Krakauer's own informed speculation about his psychology and cause of death. The film instead tells McCandless's journey directly and chronologically, without the book's investigative, after-the-fact framing.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Silver Linings Playbook
  (
    $q$e883ec35-fdd5-4f90-bee1-6cd225a7d4f6$q$::uuid,
    $q$Timeline$q$,
    $txt$Pat has been institutionalized for four years in the book, not the few months implied by the film.$txt$,
    $txt$A major element of Quick's novel is that Pat doesn't realize how much time has actually passed -- he was institutionalized for four years, and much of the book's tension comes from this extended memory gap. The film shortens his time away considerably, removing that time-loss mystery as a driving element of the story.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$e883ec35-fdd5-4f90-bee1-6cd225a7d4f6$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel's ending is more ambiguous and bittersweet than the film's conventionally upbeat resolution.$txt$,
    $txt$The film resolves Pat and Tiffany's story with a fairly traditional romantic-comedy conclusion. Quick's book is more restrained and uncertain about how neatly things wrap up, in keeping with its more clinical, less polished take on Pat's recovery.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Help
  (
    $q$6185531a-671b-4b29-83e3-12e890f035a1$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel's rotating first-person narration isn't replicated in the film.$txt$,
    $txt$Stockett's book alternates chapters narrated in the first person by Aibileen, Minny, and Skeeter, each with a distinct voice throughout. The film keeps all three as central characters but tells their story through a more conventional ensemble film structure rather than the book's strict rotating perspective.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$6185531a-671b-4b29-83e3-12e890f035a1$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book gives more sustained attention to the real danger and violence of the civil rights-era setting.$txt$,
    $txt$Stockett's novel spends more time on the specific risks the Black maids and civil rights activists faced in 1960s Mississippi, including referencing real events from that period. The film includes this backdrop but several critics have noted it streamlines and softens some of the more harrowing historical material compared to the book.$txt$,
    false,
    $q$approved$q$
  ),

  -- Moneyball
  (
    $q$8354fce3-8ad0-4e62-b127-4e764c6ef3a2$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The book is primarily about explaining sabermetrics; the film is primarily a character-driven sports drama.$txt$,
    $txt$Lewis's book spends most of its length explaining the statistical theory behind sabermetrics itself -- Bill James's work, on-base percentage versus batting average -- using the 2002 Oakland A's as a case study for the ideas. The film flips that emphasis, centering the story on Billy Beane personally and treating the statistical theory as important but secondary to the human drama.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$8354fce3-8ad0-4e62-b127-4e764c6ef3a2$q$::uuid,
    $q$Character$q$,
    $txt$Peter Brand is a fictionalized stand-in for the real assistant GM the book names directly.$txt$,
    $txt$Lewis's book discusses assistant general manager Paul DePodesta by name and in detail. DePodesta asked that his name not be used in the film, so the movie created the fictionalized composite character Peter Brand, played by Jonah Hill, in his place.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Perks of Being a Wallflower
  (
    $q$ec95d00c-2863-46cf-acda-57c48aca19c6$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is written entirely as letters to an unnamed recipient, a device the film doesn't use.$txt$,
    $txt$Chbosky's book is structured as a series of letters from Charlie addressed simply to "dear friend," an anonymous recipient whose identity is never revealed -- the reader only ever has access to Charlie's side of an unseen correspondence. The film, written and directed by Chbosky himself, uses more conventional narration and voiceover instead of this epistolary format.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$ec95d00c-2863-46cf-acda-57c48aca19c6$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Some of the book's more explicit content around drug use and Charlie's psychiatric history is toned down for the film.$txt$,
    $txt$The novel is more direct about certain difficult subject matter, including drug use and details of Charlie's psychiatric treatment. The film, while keeping the story's central emotional reveal intact, softens some of this content, likely with its rating in mind.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
