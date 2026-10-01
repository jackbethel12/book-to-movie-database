-- ============================================================================
-- Content batch 15: Rebecca, Wuthering Heights, Pride and Prejudice, Dracula,
-- The Grapes of Wrath, Catch-22, Charlotte's Web, The Hunt for Red October
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve. Checked
-- against every title in supabase/seed.sql and every migration before
-- writing this -- none of these eight overlap.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$eb82ef64-e425-4a27-863e-e2370eb1ad0f$q$, $q$Rebecca$q$, $q$Daphne du Maurier$q$, 1938, $q$Rebecca$q$, $q$Alfred Hitchcock$q$, 1940, array[$q$Mystery$q$, $q$Romance$q$, $q$Drama$q$], $txt$A shy young woman marries a wealthy widower and moves into his grand estate, only to find herself haunted by the lingering presence of his first wife, whose memory the household refuses to let go.$txt$, $q$https://covers.openlibrary.org/b/id/8238729-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/1qz3qUOHnVy7dL7M7G8jSErxE4b.jpg$q$),
  ($q$1434f167-ad35-4c98-adf4-22125b73fc26$q$, $q$Wuthering Heights$q$, $q$Emily Bronte$q$, 1847, $q$Wuthering Heights$q$, $q$William Wyler$q$, 1939, array[$q$Drama$q$, $q$Romance$q$], $txt$On the windswept Yorkshire moors, an orphan taken in by a wealthy family grows up locked in a passionate, destructive love with his adoptive sister, a bond that outlasts marriages, betrayals, and decades of bitterness.$txt$, $q$https://covers.openlibrary.org/b/id/12818862-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/pwHdSzXwlUFAcYGcFutKcPcX2OW.jpg$q$),
  ($q$6cd0c7b9-480b-4cfc-b10d-46e9e221a134$q$, $q$Pride and Prejudice$q$, $q$Jane Austen$q$, 1813, $q$Pride & Prejudice$q$, $q$Joe Wright$q$, 2005, array[$q$Romance$q$, $q$Drama$q$], $txt$In early nineteenth-century England, a sharp-witted young woman and a proud, wealthy gentleman must overcome their own stubbornness and misjudgments of each other before they can admit they're falling in love.$txt$, $q$https://covers.openlibrary.org/b/id/14348537-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/o8UhmEbWPHmTUxP0lMuCoqNkbB3.jpg$q$),
  ($q$e12e7ff6-12a7-4c6f-9944-75da397728c0$q$, $q$Dracula$q$, $q$Bram Stoker$q$, 1897, $q$Bram Stoker's Dracula$q$, $q$Francis Ford Coppola$q$, 1992, array[$q$Horror$q$, $q$Romance$q$], $txt$A young solicitor's visit to a remote Transylvanian castle unleashes an ancient vampire count on Victorian London, setting off a desperate hunt to destroy him before he claims the souls of those closest to his intended bride.$txt$, $q$https://covers.openlibrary.org/b/id/12216503-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/wpRrdm6g8zWtJnzVqME5QwSKkn7.jpg$q$),
  ($q$5b8ed4b0-b085-40a4-a68c-c44abfdb03fb$q$, $q$The Grapes of Wrath$q$, $q$John Steinbeck$q$, 1939, $q$The Grapes of Wrath$q$, $q$John Ford$q$, 1940, array[$q$Drama$q$], $txt$Driven off their Oklahoma farmland by drought and economic collapse during the Great Depression, a poor family joins the mass migration west to California in search of work and dignity.$txt$, $q$https://covers.openlibrary.org/b/id/12715902-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/eUcxMVBIA0Jg8l1RGUqycrc3eIQ.jpg$q$),
  ($q$3db5e577-0736-440e-bbdf-91ef1a64abcc$q$, $q$Catch-22$q$, $q$Joseph Heller$q$, 1961, $q$Catch-22$q$, $q$Mike Nichols$q$, 1970, array[$q$Comedy$q$, $q$Drama$q$, $q$War$q$], $txt$A U.S. Army Air Forces bombardier stationed in Italy during World War II tries every absurd scheme he can think of to get himself declared unfit for combat, trapped by a maddening bureaucratic rule that makes escape impossible.$txt$, $q$https://covers.openlibrary.org/b/id/6468653-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/eSB3i3vvFiRTszmZVawWqROzM6p.jpg$q$),
  ($q$979ceeba-d9c0-446d-8d28-f807ece46c4e$q$, $q$Charlotte's Web$q$, $q$E.B. White$q$, 1952, $q$Charlotte's Web$q$, $q$Gary Winick$q$, 2006, array[$q$Family$q$, $q$Fantasy$q$], $txt$A young pig on a farm befriends a wise spider who sets out to save his life by weaving words into her web that convince the farmer he's no ordinary animal.$txt$, $q$https://covers.openlibrary.org/b/id/8461797-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/fU0IR5HF8KxQbZijuWKPTrY81Qv.jpg$q$),
  ($q$cd821752-8856-4b5c-8a17-6ecf4624fe2c$q$, $q$The Hunt for Red October$q$, $q$Tom Clancy$q$, 1984, $q$The Hunt for Red October$q$, $q$John McTiernan$q$, 1990, array[$q$Thriller$q$, $q$Drama$q$], $txt$A Soviet submarine captain secretly attempts to defect to the United States with the Navy's newest stealth submarine, while an American intelligence analyst races to figure out his intentions before either side opens fire.$txt$, $q$https://covers.openlibrary.org/b/id/683604-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/yVl7zidse4KiWtGMqHFtZCx4X3N.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- Rebecca
  (
    $q$eb82ef64-e425-4a27-863e-e2370eb1ad0f$q$::uuid,
    $q$Ending$q$,
    $txt$In the novel, Maxim deliberately murders Rebecca; the film changes this to an accidental death because of Hollywood's production code at the time.$txt$,
    $txt$Du Maurier's book makes clear that Maxim shot Rebecca and that his later account of her death is a confession to murder, which the narrator chooses to accept and conceal. The Hollywood Production Code of the era wouldn't allow a sympathetic protagonist to get away with murder, so Hitchcock's film changes the death to an accident during a struggle, letting Maxim remain blameless.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$eb82ef64-e425-4a27-863e-e2370eb1ad0f$q$::uuid,
    $q$Character$q$,
    $txt$The unnamed narrator's constant, insecure interior monologue comparing herself to Rebecca is a defining feature of the novel that the film can only partly replicate.$txt$,
    $txt$The entire novel is narrated by the second Mrs. de Winter, whose anxious, self-doubting voice dwells obsessively on her own inadequacy next to Rebecca's memory. The film conveys this through performance and some voiceover, but necessarily loses much of the book's dense, sustained interior narration.$txt$,
    false,
    $q$approved$q$
  ),

  -- Wuthering Heights
  (
    $q$1434f167-ad35-4c98-adf4-22125b73fc26$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The film adapts only roughly the first half of the novel, cutting the entire second generation's story.$txt$,
    $txt$Bronte's novel follows Heathcliff and Catherine's story and then continues into the next generation, tracing how Heathcliff's bitterness plays out in his treatment of Catherine's daughter and Hindley's son. The 1939 film ends with the first generation's story, leaving out this entire second half of the book.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$1434f167-ad35-4c98-adf4-22125b73fc26$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The film romanticizes Heathcliff and Catherine's relationship considerably more than the novel, which presents both characters as often cruel and destructive.$txt$,
    $txt$Bronte's book is unsparing about how damaging and often vicious Heathcliff and Catherine are to the people around them, including each other. The film leans into the love story's passionate, tragic qualities while softening much of the characters' cruelty found in the source material.$txt$,
    false,
    $q$approved$q$
  ),

  -- Pride and Prejudice
  (
    $q$6cd0c7b9-480b-4cfc-b10d-46e9e221a134$q$::uuid,
    $q$Added Content$q$,
    $txt$The American theatrical release added a romantic epilogue scene at Pemberley that isn't in the novel and wasn't shown in the UK version.$txt$,
    $txt$Austen's novel ends with a chapter summarizing the Darcys' and Bingleys' married lives in retrospect, without a climactic romantic scene. For the U.S. release, the film added a scene of Elizabeth and Darcy sharing an intimate moment at Pemberley after their wedding, which doesn't appear in the UK theatrical cut or the book.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$6cd0c7b9-480b-4cfc-b10d-46e9e221a134$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's extended time at Netherfield and Elizabeth's visit to Pemberley with the Gardiners are considerably trimmed in the film.$txt$,
    $txt$Austen's book spends real time on Elizabeth's stay at Netherfield while nursing Jane, and later on her visit to Pemberley and its grounds with her aunt and uncle, both important to how her feelings toward Darcy shift. The 2005 film compresses these sections significantly to fit the story into a two-hour runtime.$txt$,
    false,
    $q$approved$q$
  ),

  -- Dracula
  (
    $q$e12e7ff6-12a7-4c6f-9944-75da397728c0$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's romantic framing device, in which Mina is the reincarnation of Dracula's dead wife, is invented for the movie and isn't in Stoker's novel.$txt$,
    $txt$Coppola's film opens with an entirely original prologue establishing Dracula as a grieving widower whose wife died centuries earlier, and frames Mina as her reincarnation, giving the story a tragic romance absent from the source material. Stoker's novel has no such backstory or romantic framing -- Dracula is presented simply as a predatory monster, with no sympathetic motive given for his actions.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$e12e7ff6-12a7-4c6f-9944-75da397728c0$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is structured entirely as a collection of diary entries, letters, and newspaper clippings assembled by its characters; the film uses a conventional third-person narrative instead.$txt$,
    $txt$Stoker's book is told entirely through in-universe documents -- journals, letters, phonograph recordings, and news clippings -- compiled after the fact by the characters themselves, giving it an unusual documentary-style structure. The film dispenses with this epistolary format and tells the story through standard cinematic narrative.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Grapes of Wrath
  (
    $q$5b8ed4b0-b085-40a4-a68c-c44abfdb03fb$q$::uuid,
    $q$Ending$q$,
    $txt$The film ends on a more hopeful note than the novel's bleaker, more ambiguous final chapters.$txt$,
    $txt$Steinbeck's novel ends with the Joad family in dire poverty, sheltering from a flood, with Rose of Sharon's baby stillborn and the family's situation left grim and uncertain. The film reorders and softens the ending, closing instead on Ma Joad's resilient "we're the people" speech, giving audiences a more uplifting final impression than the book provides.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$5b8ed4b0-b085-40a4-a68c-c44abfdb03fb$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's interchapters, which step away from the Joads to describe the broader social and economic forces of the Dust Bowl migration, are left out of the film.$txt$,
    $txt$Steinbeck periodically interrupts the Joad family's story with short, lyrical chapters describing the wider migration, land speculation, and used-car dealers profiting off desperate families, giving the novel a documentary-like scope beyond its central characters. The film, focused entirely on the Joads themselves, doesn't include this broader social commentary.$txt$,
    false,
    $q$approved$q$
  ),

  -- Catch-22
  (
    $q$3db5e577-0736-440e-bbdf-91ef1a64abcc$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel's famously nonlinear, repetitive structure, circling back on the same events from different angles, is streamlined into a more linear film narrative.$txt$,
    $txt$Heller's book jumps around in time constantly, revisiting the same incidents multiple times from different characters' perspectives and gradually revealing context, which is central to its disorienting, absurdist tone. The film reorganizes the material into a more conventional chronological structure, which changes the experience of the story considerably.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$3db5e577-0736-440e-bbdf-91ef1a64abcc$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Several of the novel's large ensemble of squadron characters and their individual episodes are cut or reduced in the film.$txt$,
    $txt$The book spends chapters on a wide cast of airmen, each with their own absurdist episode illustrating the madness of the war and the military bureaucracy. The film, constrained by runtime, reduces the focus to a smaller core of characters and omits or shortens many of these individual threads.$txt$,
    false,
    $q$approved$q$
  ),

  -- Charlotte's Web
  (
    $q$979ceeba-d9c0-446d-8d28-f807ece46c4e$q$::uuid,
    $q$Added Content$q$,
    $txt$The film gives the farm animals substantially more dialogue and personality, turning minor book characters into fuller comic roles.$txt$,
    $txt$White's novel keeps its animal characters relatively spare and economical in how much they speak, with Charlotte, Wilbur, and Templeton carrying most of the dialogue. The film, aiming for a broader family-comedy appeal, gives many more barnyard animals voices and comic bits that aren't developed the same way in the book.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$979ceeba-d9c0-446d-8d28-f807ece46c4e$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is matter-of-fact and understated about death and the passage of seasons on the farm; the film plays several of these moments for more overt emotional effect.$txt$,
    $txt$White's prose treats the farm's cycles of life and death, including Charlotte's own fate, with a plain, unsentimental clarity typical of his writing style. The film leans more heavily into swelling music and emotional staging around these same moments than the book's quieter tone does.$txt$,
    true,
    $q$approved$q$
  ),

  -- The Hunt for Red October
  (
    $q$cd821752-8856-4b5c-8a17-6ecf4624fe2c$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel includes considerably more technical detail about submarine operations and Cold War military strategy than the film has room for.$txt$,
    $txt$Clancy's book is known for its dense, highly technical descriptions of submarine systems, naval tactics, and the political and military chain of command on both the American and Soviet sides. The film streamlines most of this technical material to keep the story moving as a tense thriller.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$cd821752-8856-4b5c-8a17-6ecf4624fe2c$q$::uuid,
    $q$Character$q$,
    $txt$Jack Ryan's role and background are introduced differently in the film than in the novel, which is part of a longer-running series of books.$txt$,
    $txt$In Clancy's novels, Jack Ryan is an established recurring character with a developed history across multiple books by this point. The film, intended to stand largely on its own for moviegoers unfamiliar with the character, adjusts how much backstory and context is given for who Ryan is and how he operates within the CIA.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
