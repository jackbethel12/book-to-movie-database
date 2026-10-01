-- ============================================================================
-- Content batch 13: Gone Girl, The Hobbit: An Unexpected Journey, Lord of the
-- Flies, The Curious Case of Benjamin Button, I Am Legend, The Firm, The
-- Prestige, Water for Elephants
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$4c61d501-a5f4-4936-ab29-00ccfaa8327a$q$, $q$Gone Girl$q$, $q$Gillian Flynn$q$, 2012, $q$Gone Girl$q$, $q$David Fincher$q$, 2014, array[$q$Thriller$q$, $q$Mystery$q$], $txt$When his wife vanishes on their fifth wedding anniversary, a man becomes the prime suspect in her disappearance as the media and public turn against him, unaware of the elaborate scheme unfolding behind the scenes.$txt$, $q$https://covers.openlibrary.org/b/id/12272568-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/ts996lKsxvjkO2yiYG0ht4qAicO.jpg$q$),
  ($q$0ec62a2f-2631-48bf-8c9e-2a4edf7331ff$q$, $q$The Hobbit$q$, $q$J.R.R. Tolkien$q$, 1937, $q$The Hobbit: An Unexpected Journey$q$, $q$Peter Jackson$q$, 2012, array[$q$Fantasy$q$, $q$Adventure$q$], $txt$A reluctant hobbit is swept into a quest with thirteen dwarves and a wizard to reclaim their mountain homeland and its treasure from a fearsome dragon.$txt$, $q$https://covers.openlibrary.org/b/id/14627509-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/yHA9Fc37VmpUA5UncTxxo3rTGVA.jpg$q$),
  ($q$7cda57b2-eb73-482c-b9c3-85c4aa90aab0$q$, $q$Lord of the Flies$q$, $q$William Golding$q$, 1954, $q$Lord of the Flies$q$, $q$Harry Hook$q$, 1990, array[$q$Drama$q$], $txt$A group of boys stranded on a deserted island after a plane crash descend into savagery as their attempt at self-governance collapses.$txt$, $q$https://covers.openlibrary.org/b/id/8684447-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/xhxWsFgBYyDfRWfOhM1OrV88QDJ.jpg$q$),
  ($q$17618749-4f5f-45db-ac54-e1f3207eb204$q$, $q$The Curious Case of Benjamin Button$q$, $q$F. Scott Fitzgerald$q$, 1922, $q$The Curious Case of Benjamin Button$q$, $q$David Fincher$q$, 2008, array[$q$Drama$q$, $q$Fantasy$q$, $q$Romance$q$], $txt$A man born with the appearance and ailments of old age ages in reverse, living his life backward through decades of love and loss.$txt$, $q$https://covers.openlibrary.org/b/id/7460537-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/26wEWZYt6yJkwRVkjcbwJEFh9IS.jpg$q$),
  ($q$2ff25b91-c76a-4bec-b94d-97a38e539b89$q$, $q$I Am Legend$q$, $q$Richard Matheson$q$, 1954, $q$I Am Legend$q$, $q$Francis Lawrence$q$, 2007, array[$q$Science Fiction$q$, $q$Horror$q$], $txt$The apparent sole survivor of a pandemic that has turned humanity into bloodthirsty creatures spends his days researching a cure and his nights barricaded against the infected who hunt him.$txt$, $q$https://covers.openlibrary.org/b/id/911109-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/iPDkaSdKk2jRLTM65UOEoKtsIZ8.jpg$q$),
  ($q$38786450-f0d5-454d-9bfc-03712902824c$q$, $q$The Firm$q$, $q$John Grisham$q$, 1991, $q$The Firm$q$, $q$Sydney Pollack$q$, 1993, array[$q$Thriller$q$, $q$Drama$q$], $txt$A young lawyer lured by a lucrative offer from a prestigious Memphis firm discovers that his new employer is secretly a front for organized crime, and that leaving alive may not be an option.$txt$, $q$https://covers.openlibrary.org/b/id/9330593-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/kFexXCzidkm4LwlgZqxsJsDQB5v.jpg$q$),
  ($q$91237e8d-b533-41fa-ba7d-c652b98b45c4$q$, $q$The Prestige$q$, $q$Christopher Priest$q$, 1995, $q$The Prestige$q$, $q$Christopher Nolan$q$, 2006, array[$q$Mystery$q$, $q$Drama$q$], $txt$Two rival stage magicians in Victorian London become locked in an escalating, obsessive feud, each willing to sacrifice everything to discover the secret behind the other's greatest illusion.$txt$, $q$https://covers.openlibrary.org/b/id/3850762-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/Ag2B2KHKQPukjH7WutmgnnSNurZ.jpg$q$),
  ($q$031eb1b1-f320-4f23-8f64-d4d85a2dfc50$q$, $q$Water for Elephants$q$, $q$Sara Gruen$q$, 2006, $q$Water for Elephants$q$, $q$Francis Lawrence$q$, 2011, array[$q$Drama$q$, $q$Romance$q$], $txt$A veterinary student who joins a traveling circus during the Great Depression falls for the star performer, the wife of the show's volatile and abusive animal trainer.$txt$, $q$https://covers.openlibrary.org/b/id/6690864-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/8T7Hvb9trKvCAmbSI8cEIU0Sl2T.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- Gone Girl
  (
    $q$4c61d501-a5f4-4936-ab29-00ccfaa8327a$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel's midpoint twist is built around an extended structure of alternating "Diary Amy" chapters that turn out to be entirely fabricated; the film compresses this into a shorter flashback sequence.$txt$,
    $txt$Flynn's book spends roughly its first half alternating between Nick's present-day chapters and Amy's diary entries, which read as an increasingly disturbing account of their marriage before the book reveals the diary was fabricated as part of Amy's plan. The film, which Flynn herself adapted, condenses this long buildup into a more compact mid-film reveal, since the slow-burn structural trick of the prose doesn't translate directly to the screen.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$4c61d501-a5f4-4936-ab29-00ccfaa8327a$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The backstory of Amy's parents' "Amazing Amy" book series, and its effect on her psychology, is explored in much greater depth in the novel.$txt$,
    $txt$The book spends considerable time on how Amy grew up constantly compared to an idealized fictional version of herself invented by her parents, tying this directly to her need for control and her capacity for manipulation. The film references the "Amazing Amy" books but doesn't dwell on this psychological throughline nearly as extensively.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Hobbit
  (
    $q$0ec62a2f-2631-48bf-8c9e-2a4edf7331ff$q$::uuid,
    $q$Added Content$q$,
    $txt$Azog the Defiler is a dead historical figure by the time the book's story begins, but the film resurrects him as a central, ongoing antagonist.$txt$,
    $txt$In Tolkien's book, Azog is only mentioned as having been killed years earlier at the Battle of Azanulbizar, part of the dwarves' backstory rather than an active character. Jackson's film trilogy invents a storyline where Azog survived and personally hunts Thorin's company throughout the journey, giving the films a recurring physical villain the book doesn't have.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$0ec62a2f-2631-48bf-8c9e-2a4edf7331ff$q$::uuid,
    $q$Added Content$q$,
    $txt$Radagast the Brown's investigation of the Necromancer at Dol Guldur is a full film subplot built from brief appendix material, not a scene in the book itself.$txt$,
    $txt$Radagast is barely mentioned in The Hobbit's main text. The film draws on background material from Tolkien's appendices and other writings about the broader rise of Sauron to build out an entire additional plotline involving Radagast and the White Council, substantially expanding what is a short children's novel into a much larger-scale story.$txt$,
    false,
    $q$approved$q$
  ),

  -- Lord of the Flies
  (
    $q$7cda57b2-eb73-482c-b9c3-85c4aa90aab0$q$::uuid,
    $q$Setting$q$,
    $txt$The boys are relocated from British schoolboys evacuated during a nuclear war in the novel to American military academy cadets in this film version.$txt$,
    $txt$Golding's novel is specifically about English boys being evacuated by plane during an unspecified nuclear conflict when their aircraft crashes. The 1990 film Americanizes the cast, making the boys cadets from a U.S. military school whose plane goes down, shifting the book's specifically British, postwar anxieties into a different cultural context.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$7cda57b2-eb73-482c-b9c3-85c4aa90aab0$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$Simon's near-mystical connection to the island and the symbolism around his death are more lyrical and extended in the novel.$txt$,
    $txt$Golding's prose gives Simon's communion with nature, and his hallucinatory conversation with the pig's head "Lord of the Flies," a dense, almost religious quality central to the book's themes. The film retains the plot events but renders them in a more literal, grounded style, losing some of the novel's symbolic weight.$txt$,
    true,
    $q$approved$q$
  ),

  -- The Curious Case of Benjamin Button
  (
    $q$17618749-4f5f-45db-ac54-e1f3207eb204$q$::uuid,
    $q$Added Content$q$,
    $txt$Fitzgerald's source is a short satirical story of about twenty pages; the nearly three-hour film invents almost its entire plot, setting, and supporting cast.$txt$,
    $txt$The original 1922 short story is a brief, comedic piece with a relatively small scope. The film expands it into a sprawling romantic epic set largely in New Orleans, framed by a dying woman's hospital bed during Hurricane Katrina, and introduces an entirely new central love interest and supporting cast that don't exist in Fitzgerald's text at all.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$17618749-4f5f-45db-ac54-e1f3207eb204$q$::uuid,
    $q$Character$q$,
    $txt$Benjamin's love interest is a completely different character in the film than in the original story.$txt$,
    $txt$Fitzgerald's story has Benjamin marry a woman named Hildegarde Moncrief, and the tone of their relationship is played largely for wry social comedy. The film replaces her entirely with an original character named Daisy, and reframes the central relationship as a sweeping, tragic romance, a tonal and narrative shift far beyond the source material.$txt$,
    false,
    $q$approved$q$
  ),

  -- I Am Legend
  (
    $q$2ff25b91-c76a-4bec-b94d-97a38e539b89$q$::uuid,
    $q$Ending$q$,
    $txt$The novel's famous twist, that Neville himself has become the monster of legend to a new society of infected survivors, is dropped from the film's more conventional heroic-sacrifice ending.$txt$,
    $txt$Matheson's book ends with Neville realizing that the infected have formed their own evolving society with its own laws, and that to them, he -- the once-ordinary man who has been killing them in their sleep for years -- is the terrifying legend, the title's irony being that Neville has become what vampires once were to humanity. The film instead gives Neville a straightforward martyr's death, discovering a cure and sacrificing himself so a cure can reach other human survivors, losing the book's darker, ironic reversal entirely.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$2ff25b91-c76a-4bec-b94d-97a38e539b89$q$::uuid,
    $q$Character$q$,
    $txt$The infected in the book are intelligent and capable of rebuilding a society and language; the film's infected are feral, non-verbal creatures.$txt$,
    $txt$Matheson's novel depicts the vampiric survivors as retaining intelligence, communication, and the beginnings of a new social order, which is essential to the book's ending. The film reimagines them as fast, animalistic, zombie-like CGI creatures with no evident higher reasoning, which is a significantly different take on what they represent.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Firm
  (
    $q$38786450-f0d5-454d-9bfc-03712902824c$q$::uuid,
    $q$Ending$q$,
    $txt$In the novel, Mitch brings the firm down over a technicality, mail fraud, rather than its mob ties, and flees the country with stolen money; the film has him work with the FBI without stealing anything or going on the run.$txt$,
    $txt$Grisham's book has Mitch carefully avoid violating attorney-client privilege by exposing the firm for a lesser crime, mail fraud, while he and his wife quietly take a large sum of money and disappear to start a new, anonymous life abroad, morally compromised but free. The film gives Mitch a cleaner resolution, directly helping the FBI build a racketeering case against the firm and remaining able to practice law afterward, without becoming a fugitive or a thief himself.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$38786450-f0d5-454d-9bfc-03712902824c$q$::uuid,
    $q$Character$q$,
    $txt$Tammy Hemphill's investigative role in uncovering the firm's crimes is considerably larger in the novel than in the film.$txt$,
    $txt$The book gives private investigator Eddie Lomax's associate Tammy an extended, active role gathering evidence against the firm over many chapters. The film reduces her overall presence and narrows the scope of her involvement in the investigation.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Prestige
  (
    $q$91237e8d-b533-41fa-ba7d-c652b98b45c4$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel is framed by present-day descendants of the two magicians discovering the truth about their ancestors; the film has no modern-day framing story at all.$txt$,
    $txt$Priest's book is structured partly as journals, read in the present day by Andrew Westley and Kate Angier, descendants of the original rivals, who piece together the century-old feud themselves. Nolan's film strips this contemporary layer out entirely, telling the story of Robert Angier and Alfred Borden's rivalry directly, without any framing device involving their descendants.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$91237e8d-b533-41fa-ba7d-c652b98b45c4$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The nature of Tesla's machine and what it actually does to Angier is left more ambiguous in the novel than in the film's unambiguous cloning explanation.$txt$,
    $txt$The book treats Angier's use of Tesla's device with more mystery, never fully pinning down the exact mechanism by which his trick works. The film makes it explicit and literal: the machine creates a genuine duplicate each time it's used, and Angier drowns the "original" copy in a water tank after every performance, giving the story's central secret a more concrete science-fiction explanation than the novel commits to.$txt$,
    true,
    $q$approved$q$
  ),

  -- Water for Elephants
  (
    $q$031eb1b1-f320-4f23-8f64-d4d85a2dfc50$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The framing device of Jacob reminiscing as a very old man in a nursing home is far more developed in the novel than in the film's shorter bookend scenes.$txt$,
    $txt$Gruen's book spends considerable time in the present day with Jacob, now in his nineties and uncertain of his exact age, chafing against life in a nursing home as he recalls his circus days. The film keeps a version of this framing but trims it down substantially to focus the runtime on the central 1930s story.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$031eb1b1-f320-4f23-8f64-d4d85a2dfc50$q$::uuid,
    $q$Character$q$,
    $txt$August's mental instability is given more explicit psychological complexity and backstory in the novel than the film provides.$txt$,
    $txt$The book suggests August suffers from a form of mental illness, likely what would now be understood as a dissociative or psychotic disorder, and spends time contextualizing his violent mood swings as a symptom of this. The film keeps August's volatility and cruelty but presents him in a more straightforwardly villainous way, without as much of the book's underlying psychological framing.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
