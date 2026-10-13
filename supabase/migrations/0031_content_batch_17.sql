-- ============================================================================
-- Content batch 17: The Secret Garden, Alice in Wonderland, Peter Pan, The
-- Jungle Book, James and the Giant Peach, The BFG, The Witches, Percy
-- Jackson & the Olympians: The Lightning Thief
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve. Checked
-- against every title in supabase/seed.sql and every migration before
-- writing this -- none of these eight overlap.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$37562764-797b-444c-a6d6-244e2bb893a6$q$, $q$The Secret Garden$q$, $q$Frances Hodgson Burnett$q$, 1911, $q$The Secret Garden$q$, $q$Agnieszka Holland$q$, 1993, array[$q$Drama$q$, $q$Family$q$, $q$Fantasy$q$], $txt$A recently orphaned, sour-tempered girl sent to live at her uncle's gloomy English estate discovers a locked, forgotten garden, and in bringing it back to life finds herself and a sickly cousin transformed along with it.$txt$, $q$https://covers.openlibrary.org/b/id/12622062-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/zf6h5dJ7wVG7LqMO9dhHGHVejzj.jpg$q$),
  ($q$301732df-c103-41f0-ae6c-94be89abd0d6$q$, $q$Alice's Adventures in Wonderland$q$, $q$Lewis Carroll$q$, 1865, $q$Alice in Wonderland$q$, $q$Tim Burton$q$, 2010, array[$q$Fantasy$q$, $q$Adventure$q$, $q$Family$q$], $txt$A nineteen-year-old Alice tumbles back down the rabbit hole into a Wonderland she visited as a child, now ruled by a tyrannical Red Queen, and finds she's expected to fulfill a prophecy by slaying the Jabberwocky.$txt$, $q$https://covers.openlibrary.org/b/id/10527843-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/o0kre9wRCZz3jjSjaru7QU0UtFz.jpg$q$),
  ($q$c7f53100-c1e1-4384-b019-2e7c1e1ed884$q$, $q$Peter and Wendy$q$, $q$J.M. Barrie$q$, 1911, $q$Peter Pan$q$, $q$P.J. Hogan$q$, 2003, array[$q$Fantasy$q$, $q$Adventure$q$, $q$Family$q$], $txt$A boy who refuses to grow up spirits a young girl and her brothers away to the island of Neverland, where mermaids, fairies, and the vengeful Captain Hook await.$txt$, $q$https://covers.openlibrary.org/b/id/13173773-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/6QdU3TZZrIvXFzoHOwafZAynFjB.jpg$q$),
  ($q$7a061eb4-266f-4fe6-b5f4-a3a6eaad08f1$q$, $q$The Jungle Book$q$, $q$Rudyard Kipling$q$, 1894, $q$The Jungle Book$q$, $q$Jon Favreau$q$, 2016, array[$q$Adventure$q$, $q$Family$q$, $q$Fantasy$q$], $txt$Raised by wolves deep in the Indian jungle, a human boy must leave the only home he's known when a vengeful tiger threatens his pack, setting out on a journey guided by a panther and a free-spirited bear.$txt$, $q$https://covers.openlibrary.org/b/id/3344204-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/2Epx7F9X7DrFptn4seqn4mzBVks.jpg$q$),
  ($q$e42f77e0-a940-43aa-a95b-76fbe41fa476$q$, $q$James and the Giant Peach$q$, $q$Roald Dahl$q$, 1961, $q$James and the Giant Peach$q$, $q$Henry Selick$q$, 1996, array[$q$Fantasy$q$, $q$Family$q$, $q$Adventure$q$], $txt$An orphan boy trapped with his cruel aunts discovers a giant magical peach growing in their yard, and rolls away inside it with a crew of oversized talking insects on a journey across the ocean to New York City.$txt$, $q$https://covers.openlibrary.org/b/id/8252454-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/vNEGobe23vW43mSPYVaVaBLP6qV.jpg$q$),
  ($q$2bf0086e-5eee-4ce0-9c69-30da54b96887$q$, $q$The BFG$q$, $q$Roald Dahl$q$, 1982, $q$The BFG$q$, $q$Steven Spielberg$q$, 2016, array[$q$Fantasy$q$, $q$Family$q$, $q$Adventure$q$], $txt$An orphan girl is whisked away in the night by a gentle giant who collects dreams, and together they set out to stop the other, much larger giants from crossing the sea to devour children.$txt$, $q$https://covers.openlibrary.org/b/id/9176033-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/w17Mc2x2olB5CtewznUFxgpvne0.jpg$q$),
  ($q$64db563d-8e60-4718-ac3a-ad8c49ba65fa$q$, $q$The Witches$q$, $q$Roald Dahl$q$, 1983, $q$The Witches$q$, $q$Nicolas Roeg$q$, 1990, array[$q$Fantasy$q$, $q$Horror$q$, $q$Family$q$], $txt$A young boy staying at a seaside hotel with his grandmother stumbles onto a secret convention of real witches plotting to turn every child in England into a mouse, and must stop them after becoming one himself.$txt$, $q$https://covers.openlibrary.org/b/id/12374442-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/mPYBjVkeHakkPGY7WaKyyNU4RWm.jpg$q$),
  ($q$eb2160b3-90eb-41c9-9360-c216ed8b41ec$q$, $q$Percy Jackson & the Olympians: The Lightning Thief$q$, $q$Rick Riordan$q$, 2005, $q$Percy Jackson & the Olympians: The Lightning Thief$q$, $q$Chris Columbus$q$, 2010, array[$q$Fantasy$q$, $q$Adventure$q$, $q$Young Adult$q$], $txt$A troubled twelve-year-old discovers he's the son of Poseidon and is accused of stealing Zeus's master lightning bolt, sending him on a quest across modern America to clear his name and prevent a war among the gods.$txt$, $q$https://covers.openlibrary.org/b/id/7239831-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/brzpTyZ5bnM7s53C1KSk1TmrMO6.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- The Secret Garden
  (
    $q$37562764-797b-444c-a6d6-244e2bb893a6$q$::uuid,
    $q$Character$q$,
    $txt$Book-Mary is written as considerably more unlikable and sour at the start than most film versions allow her to be.$txt$,
    $txt$Burnett's novel is unusually frank about how spoiled, sickly, and genuinely disagreeable Mary is when she first arrives at Misselthwaite, making her transformation over the book more dramatic. Adaptations, including the 1993 film, tend to soften her unpleasantness somewhat to keep her more sympathetic to audiences from the start.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$37562764-797b-444c-a6d6-244e2bb893a6$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel spends considerably more time on the Yorkshire dialect and folk wisdom of the servant characters, especially Dickon and Martha.$txt$,
    $txt$Burnett writes Martha and Dickon's speech in a thick Yorkshire dialect and gives their rural, nature-based worldview real narrative weight as a contrast to Mary's colonial upbringing in India. Films tend to trim much of this dialect-heavy dialogue and the broader cultural contrast for a more general audience.$txt$,
    false,
    $q$approved$q$
  ),

  -- Alice's Adventures in Wonderland
  (
    $q$301732df-c103-41f0-ae6c-94be89abd0d6$q$::uuid,
    $q$Added Content$q$,
    $txt$Burton's film invents an entirely new plot in which an older Alice returns to Wonderland to fulfill a prophecy and battle the Jabberwocky, which isn't the structure of Carroll's book at all.$txt$,
    $txt$Carroll's original novel has no overarching quest or prophecy -- it's a loosely connected, dreamlike series of episodic encounters with Wonderland's strange inhabitants, ending simply with Alice waking up. The film reimagines the story as a teenager's return visit years later, complete with an invented war against the Red Queen and a climactic battle, giving it a conventional hero's-journey structure the book never has.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$301732df-c103-41f0-ae6c-94be89abd0d6$q$::uuid,
    $q$Character$q$,
    $txt$The film merges and reinterprets several characters from both "Alice's Adventures in Wonderland" and its sequel "Through the Looking-Glass."$txt$,
    $txt$Burton's film draws elements from both of Carroll's Alice books and from his own invention, blending or altering characters and settings from each source rather than adapting either book directly. This makes the film closer to a loose remix of Carroll's world than a direct adaptation of either individual novel.$txt$,
    false,
    $q$approved$q$
  ),

  -- Peter and Wendy
  (
    $q$c7f53100-c1e1-4384-b019-2e7c1e1ed884$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$Barrie's novel is considerably darker and more melancholy about the cost of never growing up than most film versions play it.$txt$,
    $txt$The book is explicit that Peter is forgetful to the point of cruelty, that the Lost Boys are "thinned out" over time, and that childhood innocence in Neverland comes with real loss and sorrow, including Wendy's eventual, bittersweet choice to grow up and leave Peter behind for good. The 2003 film keeps some of this wistfulness but generally presents a warmer, more straightforwardly adventurous Neverland than Barrie's more ambivalent original.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$c7f53100-c1e1-4384-b019-2e7c1e1ed884$q$::uuid,
    $q$Added Content$q$,
    $txt$The 2003 film adds a stronger romantic undercurrent between Peter and Wendy that is only implied, much more subtly, in the novel.$txt$,
    $txt$Barrie's book gestures at Wendy's budding feelings for Peter but keeps things firmly in the register of childhood innocence, with Peter himself largely uncomprehending of romantic love at all. The film leans into a more overt, bittersweet romantic tension between the two characters that goes further than the book's more restrained treatment.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Jungle Book
  (
    $q$7a061eb4-266f-4fe6-b5f4-a3a6eaad08f1$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Kipling's book is a collection of short stories, several of which have nothing to do with Mowgli at all, unlike the single continuous Mowgli narrative the film tells.$txt$,
    $txt$The original "Jungle Book" alternates Mowgli's story with entirely unrelated tales, including "Rikki-Tikki-Tavi" about a heroic mongoose and "The White Seal," none of which involve Mowgli or his jungle pack. Both the 2016 film and the earlier Disney tradition focus the story entirely on Mowgli, dropping these other tales completely.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$7a061eb4-266f-4fe6-b5f4-a3a6eaad08f1$q$::uuid,
    $q$Ending$q$,
    $txt$The book follows Mowgli's story across years into his eventual return to human society as a young man; the film ends with him choosing to stay in the jungle.$txt$,
    $txt$Kipling's Mowgli stories trace his growth over an extended period, and in the longer arc of the book he eventually leaves the jungle to rejoin human villagers. The 2016 film compresses the story into a single adventure and ends with Mowgli deciding to remain with his animal family in the jungle, a more sentimental conclusion than the book's longer trajectory.$txt$,
    false,
    $q$approved$q$
  ),

  -- James and the Giant Peach
  (
    $q$e42f77e0-a940-43aa-a95b-76fbe41fa476$q$::uuid,
    $q$Added Content$q$,
    $txt$The film adds a live-action framing story and extended stop-motion sequences, including a battle with mechanical sharks, that go well beyond the book's more compact plot.$txt$,
    $txt$Dahl's novel is a relatively short, straightforward adventure once James and the insects set off across the ocean inside the peach. Selick's film, blending live action with stop-motion animation, adds extra set pieces not found in the book, including an elaborate confrontation with robotic sharks sent by the rhinoceros that killed James's parents.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$e42f77e0-a940-43aa-a95b-76fbe41fa476$q$::uuid,
    $q$Character$q$,
    $txt$James's parents' deaths are described in a quick, darkly comic single sentence in the book, while the film gives their deaths a more dramatic visual treatment.$txt$,
    $txt$Dahl famously dispatches James's parents in one blunt, absurdist sentence about an escaped rhinoceros, in keeping with the book's dark comic tone. The film stages this as a genuinely frightening animated sequence early on, giving the moment considerably more weight and visual drama than the book's matter-of-fact brevity.$txt$,
    true,
    $q$approved$q$
  ),

  -- The BFG
  (
    $q$2bf0086e-5eee-4ce0-9c69-30da54b96887$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's invented language and wordplay, central to the BFG's distinctive voice, is necessarily reduced in the film's spoken dialogue.$txt$,
    $txt$Dahl fills the book with the BFG's constant malapropisms and invented vocabulary -- "scrumdiddlyumptious," "whizzpopping," and so on -- which make up a huge amount of the text's charm and humor on the page. The film keeps a good amount of this but, as a visual medium relying on spoken performance, can't replicate the sheer density of wordplay that runs through nearly every page of the book.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2bf0086e-5eee-4ce0-9c69-30da54b96887$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's extended sequence at Buckingham Palace, including an elaborate breakfast scene with the Queen, is expanded well beyond its brief treatment in the book.$txt$,
    $txt$Dahl's novel does involve the Queen and the British military in its resolution, but handles it fairly quickly. Spielberg's film builds this into a much longer, more elaborate comic set piece, including a famous breakfast scene full of corgis and flatulence humor that's expanded considerably from the book's shorter version of these events.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Witches
  (
    $q$64db563d-8e60-4718-ac3a-ad8c49ba65fa$q$::uuid,
    $q$Ending$q$,
    $txt$The film gives the boy a happy ending where he's restored to human form; in the book, he remains a mouse permanently, a change Dahl was reportedly unhappy about.$txt$,
    $txt$Dahl's novel ends with its young narrator accepting that he'll live out the rest of his shortened life as a mouse alongside his grandmother, a bittersweet ending the author considered important to the book's themes. The 1990 film changes this so the boy is turned back into a human, a studio-mandated alteration Dahl was known to have strongly disliked.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$64db563d-8e60-4718-ac3a-ad8c49ba65fa$q$::uuid,
    $q$Character$q$,
    $txt$The boy narrator is never given a name in the novel, while film versions typically name him.$txt$,
    $txt$Dahl's book is narrated in the first person by an unnamed boy throughout, a deliberate choice that keeps the story close and universal. Film adaptations, including the 1990 version, generally give the character a proper name for the sake of dialogue and clarity on screen.$txt$,
    false,
    $q$approved$q$
  ),

  -- Percy Jackson & the Olympians: The Lightning Thief
  (
    $q$eb2160b3-90eb-41c9-9360-c216ed8b41ec$q$::uuid,
    $q$Character$q$,
    $txt$Percy and his friends are twelve years old in the book, but the film cast and portrayed them as teenagers several years older.$txt$,
    $txt$Riordan's novel establishes Percy, Annabeth, and Grover as twelve-year-olds, which matters for the books' themes about navigating adolescence and learning disabilities like dyslexia and ADHD at that specific age. The film aged the characters up into their mid-to-late teens, which shifts the tone and dynamics of their relationships considerably from the book.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$eb2160b3-90eb-41c9-9360-c216ed8b41ec$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's handling of Percy's dyslexia and ADHD as secretly being a demigod's heightened senses and battle reflexes is a major theme largely dropped from the film.$txt$,
    $txt$A core idea in Riordan's books is that Percy's learning differences are reframed as signs of his godly heritage -- his ADHD as battle reflexes, his dyslexia as his brain being hardwired for Ancient Greek rather than English -- giving the series real resonance for young readers with similar diagnoses. The film does not meaningfully carry this thematic thread forward.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
