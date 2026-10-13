-- ============================================================================
-- Content batch 18 (more recent adaptations, mostly 2014-2019): Crazy Rich
-- Asians, The Hate U Give, The Maze Runner, If Beale Street Could Talk, The
-- Goldfinch, Hidden Figures, A Simple Favor, Love, Simon
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve. Checked
-- against every title in supabase/seed.sql and every migration before
-- writing this -- none of these eight overlap.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$ea68619e-8c22-4bed-83c0-e388ad9a15eb$q$, $q$Crazy Rich Asians$q$, $q$Kevin Kwan$q$, 2013, $q$Crazy Rich Asians$q$, $q$Jon M. Chu$q$, 2018, array[$q$Comedy$q$, $q$Romance$q$], $txt$An American-born economics professor travels to Singapore with her boyfriend for a wedding, only to discover his family is absurdly, secretly wealthy, and that she's about to be put through the wringer by a society that doesn't think she belongs.$txt$, $q$https://covers.openlibrary.org/b/id/8251889-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/1XxL4LJ5WHdrcYcihEZUCgNCpAW.jpg$q$),
  ($q$0197e547-9749-4151-ac4c-19bf4bcf1ccc$q$, $q$The Hate U Give$q$, $q$Angie Thomas$q$, 2017, $q$The Hate U Give$q$, $q$George Tillman Jr.$q$, 2018, array[$q$Drama$q$], $txt$A Black teenager who moves between her poor neighborhood and a mostly white prep school becomes an unwilling activist after witnessing a police officer fatally shoot her unarmed childhood best friend.$txt$, $q$https://covers.openlibrary.org/b/id/11521588-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/2icwBom0t5nmOuZI9FVXF3gkMK0.jpg$q$),
  ($q$1f6c8926-9d37-497c-b069-26f164e01345$q$, $q$The Maze Runner$q$, $q$James Dashner$q$, 2009, $q$The Maze Runner$q$, $q$Wes Ball$q$, 2014, array[$q$Science Fiction$q$, $q$Dystopian$q$, $q$Young Adult$q$], $txt$A boy wakes with no memory inside a walled, ever-shifting maze run by a community of other amnesiac boys, and must find a way out before the maze's monstrous guardians close in.$txt$, $q$https://covers.openlibrary.org/b/id/10464801-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/ode14q7WtDugFDp78fo9lCsmay9.jpg$q$),
  ($q$d6100093-2f48-4e50-a193-054b63450a76$q$, $q$If Beale Street Could Talk$q$, $q$James Baldwin$q$, 1974, $q$If Beale Street Could Talk$q$, $q$Barry Jenkins$q$, 2018, array[$q$Drama$q$, $q$Romance$q$], $txt$A young pregnant woman in 1970s Harlem fights to clear her fiance's name after he's wrongfully accused of rape, while their families reckon with what his imprisonment is doing to all of them.$txt$, $q$https://covers.openlibrary.org/b/id/167371-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/qhUIOTSi3kr4290tKrVyeriyvrv.jpg$q$),
  ($q$594bcded-90c0-419f-977e-15818d6ccfa0$q$, $q$The Goldfinch$q$, $q$Donna Tartt$q$, 2013, $q$The Goldfinch$q$, $q$John Crowley$q$, 2019, array[$q$Drama$q$, $q$Mystery$q$], $txt$After a terrorist bombing at a museum kills his mother, a boy walks away clutching a small Dutch masterpiece, a secret that shapes the rest of his life as he's shuffled between guardians and drawn into the art underworld.$txt$, $q$https://covers.openlibrary.org/b/id/8771366-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/5Jx9VyVPiK9GQ7ouKLkTUYnZSQ4.jpg$q$),
  ($q$b755e14c-4c4d-40bb-a097-e06394ea38fb$q$, $q$Hidden Figures$q$, $q$Margot Lee Shetterly$q$, 2016, $q$Hidden Figures$q$, $q$Theodore Melfi$q$, 2016, array[$q$Drama$q$], $txt$Three brilliant Black women mathematicians working at NASA during the early space race fight segregation and sexism while providing the crucial calculations that help send John Glenn into orbit.$txt$, $q$https://covers.openlibrary.org/b/id/10661694-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/9lfz2W2uGjyow3am00rsPJ8iOyq.jpg$q$),
  ($q$b7cdc158-0575-4600-a68c-274439aa28ad$q$, $q$A Simple Favor$q$, $q$Darcey Bell$q$, 2017, $q$A Simple Favor$q$, $q$Paul Feig$q$, 2018, array[$q$Thriller$q$, $q$Comedy$q$, $q$Mystery$q$], $txt$A straitlaced mommy vlogger investigates the sudden disappearance of her glamorous new best friend, uncovering a tangle of secrets, lies, and hidden identities along the way.$txt$, $q$https://covers.openlibrary.org/b/id/10870564-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/aIYsjQM0piKc0ibPBCTWv3sqshj.jpg$q$),
  ($q$ef63a6ac-57a0-4ee5-972f-5fc93f401627$q$, $q$Simon vs. the Homo Sapiens Agenda$q$, $q$Becky Albertalli$q$, 2015, $q$Love, Simon$q$, $q$Greg Berlanti$q$, 2018, array[$q$Comedy$q$, $q$Romance$q$, $q$Young Adult$q$], $txt$A closeted gay high schooler falls for an anonymous classmate through a string of secret emails, until a classmate's blackmail threat forces him to confront coming out on his own terms.$txt$, $q$https://covers.openlibrary.org/b/id/12303551-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/snIsqVPmlu4LPjvToHpDotxa7Eh.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- Crazy Rich Asians
  (
    $q$ea68619e-8c22-4bed-83c0-e388ad9a15eb$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's much larger ensemble of extended family members and subplots is trimmed considerably for the film.$txt$,
    $txt$Kwan's book juggles a sprawling cast of cousins, socialites, and rival families across many interwoven subplots, including significant material involving characters like Astrid's marriage troubles that the book explores in much greater depth. The film narrows its focus mainly to Rachel and Nick's story, streamlining or cutting many of the novel's secondary plotlines.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$ea68619e-8c22-4bed-83c0-e388ad9a15eb$q$::uuid,
    $q$Ending$q$,
    $txt$The film ends on a clean, resolved proposal; the novel leaves several character arcs, including Nick's mother's approval, more open heading into its sequels.$txt$,
    $txt$As the first book in a trilogy, Kwan's novel leaves plenty of tension unresolved, including a frostier, more ambiguous relationship between Rachel and Nick's mother Eleanor. The film gives the story a more conclusive, crowd-pleasing happy ending, including a mahjong confrontation between Rachel and Eleanor invented for the movie.$txt$,
    true,
    $q$approved$q$
  ),

  -- The Hate U Give
  (
    $q$0197e547-9749-4151-ac4c-19bf4bcf1ccc$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is narrated entirely in Starr's first-person voice, giving extended interior access to her code-switching and internal conflict that the film can only partly convey.$txt$,
    $txt$Thomas's book spends considerable time inside Starr's head as she navigates moving between her Black neighborhood and her predominantly white private school, articulating her anxieties and anger in detailed first-person narration. The film uses some voiceover to capture this but necessarily externalizes much of what the book handles through Starr's own extended internal monologue.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$0197e547-9749-4151-ac4c-19bf4bcf1ccc$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Several of Starr's school friendships and their specific tensions around race are condensed or cut in the film.$txt$,
    $txt$The novel spends more time on Starr's friendships at Williamson Prep, including specific incidents of casual racism and microaggressions from her white friends that complicate her sense of belonging there. The film keeps the broad strokes of this tension but compresses many of the book's individual scenes and side characters.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Maze Runner
  (
    $q$1f6c8926-9d37-497c-b069-26f164e01345$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's invented Glader slang -- words like "shuck," "klunk," and "greenie" -- is used far more extensively in the book than in the film's dialogue.$txt$,
    $txt$Dashner's book leans heavily into a distinct vocabulary the boys have developed in isolation, with made-up slang peppering nearly every page of dialogue. The film keeps a handful of these terms for flavor but uses much more conventional dialogue overall.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$1f6c8926-9d37-497c-b069-26f164e01345$q$::uuid,
    $q$Character$q$,
    $txt$Thomas's dawning memories and his suspected connection to WICKED are revealed more gradually and ambiguously in the book than in the film.$txt$,
    $txt$The novel is slower and more opaque about how much Thomas remembers and what his role in creating the maze might have been, building suspicion about him among the other Gladers over a longer stretch. The film compresses this reveal and makes Thomas's arc clearer and faster-paced for the screen.$txt$,
    true,
    $q$approved$q$
  ),

  -- If Beale Street Could Talk
  (
    $q$d6100093-2f48-4e50-a193-054b63450a76$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$Baldwin's novel is narrated in Tish's first-person voice throughout; the film uses voiceover from Tish but also lingers visually on moments the book conveys only through her narration.$txt$,
    $txt$The book is Tish's own telling of events, filtered entirely through her perspective and voice as she recounts her and Fonny's relationship and his wrongful imprisonment. Jenkins's film uses excerpts of Tish's narration as voiceover but leans heavily on its own visual and musical language -- lush cinematography and a Nicholas Britell score -- to convey emotion the novel handles through prose alone.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$d6100093-2f48-4e50-a193-054b63450a76$q$::uuid,
    $q$Ending$q$,
    $txt$The film's ending is slightly more hopeful in tone than the novel's more unresolved, somber close.$txt$,
    $txt$Baldwin's book ends with Fonny still in prison and the family's future genuinely uncertain, closing on a muted, ambiguous note. The film's final scenes, while still not offering a clean resolution, are shot and scored in a way that leaves audiences with a somewhat gentler emotional landing than the novel's more unresolved ending.$txt$,
    true,
    $q$approved$q$
  ),

  -- The Goldfinch
  (
    $q$594bcded-90c0-419f-977e-15818d6ccfa0$q$::uuid,
    $q$Timeline$q$,
    $txt$The novel spends much more time in Theo's Las Vegas years with his father, a period the film compresses significantly.$txt$,
    $txt$Tartt's nearly 800-page novel devotes a long, formative stretch to teenage Theo's time living with his unreliable father in Las Vegas, including his friendship with Boris, developed slowly over many chapters. The film, constrained to a feature runtime, moves through this period much faster, losing a lot of the novel's patient character development.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$594bcded-90c0-419f-977e-15818d6ccfa0$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's extended philosophical reflections on art, loss, and meaning, especially in its final chapters, are largely absent from the film.$txt$,
    $txt$Tartt's book closes with lengthy, essayistic passages where Theo reflects directly on art, mortality, and the painting's meaning to his life, which make up some of the novel's most discussed writing. The film ends its plot in a similar place but doesn't attempt to replicate these extended philosophical digressions.$txt$,
    false,
    $q$approved$q$
  ),

  -- Hidden Figures
  (
    $q$b755e14c-4c4d-40bb-a097-e06394ea38fb$q$::uuid,
    $q$Timeline$q$,
    $txt$The book covers a much longer span of these women's careers at NASA across decades; the film compresses events into a tighter 1961-1962 timeframe.$txt$,
    $txt$Shetterly's book, a work of historical nonfiction, traces Katherine Johnson, Dorothy Vaughan, and Mary Jackson's careers across many years, including events well before and after the Mercury program. The film focuses the story on a condensed period around John Glenn's orbital flight, consolidating and reordering some real events for dramatic pacing.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$b755e14c-4c4d-40bb-a097-e06394ea38fb$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's scene of Katherine Johnson running across the NASA campus to use a "colored" bathroom, and Al Harrison tearing down the segregated bathroom sign, are dramatized inventions not drawn directly from the book.$txt$,
    $txt$This has become one of the film's most memorable scenes, but it's a dramatized composite built for the movie rather than a specific documented incident described that way in Shetterly's book. The book does document the real segregation these women faced at NASA, but the film's particular staging of this moment, including the fictional supervisor character Al Harrison's intervention, is an invention for the screen.$txt$,
    false,
    $q$approved$q$
  ),

  -- A Simple Favor
  (
    $q$b7cdc158-0575-4600-a68c-274439aa28ad$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The film plays its twisty plot for dark comedy and style, while the novel is told in a more straightforward thriller register with alternating blog-post and narrative chapters.$txt$,
    $txt$Bell's novel uses a structure of Stephanie's mommy-blog posts interspersed with more conventional narrative chapters to build its mystery. Feig's film, known for comedic direction, gives the same plot a heightened, stylish, dark-comic tone with a very different overall feel than the book's more grounded thriller approach.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$b7cdc158-0575-4600-a68c-274439aa28ad$q$::uuid,
    $q$Character$q$,
    $txt$Several plot mechanics behind Emily's disappearance and true identity are altered and simplified for the film's version of the story.$txt$,
    $txt$The novel's explanation for Emily's scheme and backstory involves somewhat different specifics than what the film ultimately depicts, with the movie streamlining and changing some of the mechanics of her plan and her relationships with other characters for clarity on screen.$txt$,
    true,
    $q$approved$q$
  ),

  -- Simon vs. the Homo Sapiens Agenda / Love, Simon
  (
    $q$ef63a6ac-57a0-4ee5-972f-5fc93f401627$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The film's title was changed entirely from the book's, and the marketing and tone shift toward a more conventional studio teen rom-com than the novel's voice.$txt$,
    $txt$Albertalli's novel has a wry, specific first-person voice and a somewhat more low-key, indie sensibility as a YA novel. The film, retitled "Love, Simon" for its theatrical release, is styled and marketed much more like a glossy mainstream teen romantic comedy, a notable tonal shift from the book's smaller-scale, voice-driven original.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$ef63a6ac-57a0-4ee5-972f-5fc93f401627$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel includes more of Simon's email exchanges with his anonymous pen pal "Blue" and more of his reflections on them than the film can show directly.$txt$,
    $txt$Much of the book is structured around Simon and Blue's emails to each other, giving readers extended direct access to their evolving relationship in their own written words. The film dramatizes Blue's messages mostly through voiceover narration over visual sequences rather than reproducing the emails' full text and volume the way the novel does.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
