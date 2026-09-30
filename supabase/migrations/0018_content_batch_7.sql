-- ============================================================================
-- Content batch 7: newer adaptations — Dune, Killers of the Flower Moon,
-- Poor Things, Erasure (American Fiction), The Nickel Boys, Conclave,
-- Where the Crawdads Sing, A Man Called Ove (A Man Called Otto)
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$7caf44ba-7617-44be-89c2-488c83eb3c5c$q$, $q$Dune$q$, $q$Frank Herbert$q$, 1965, $q$Dune$q$, $q$Denis Villeneuve$q$, 2021, array[$q$Science Fiction$q$, $q$Adventure$q$], $txt$On a desert planet that holds the key to the most valuable substance in the universe, a young nobleman is thrust into a war for its control after his family is betrayed, setting him on a path tangled with prophecy and vengeance.$txt$, $q$https://covers.openlibrary.org/b/id/11481354-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/v1tRXZ4JtD2Iv6fjkPvT4GiwslV.jpg$q$),
  ($q$42c9a404-7743-4c3b-bb04-7742fa5d84e5$q$, $q$Killers of the Flower Moon$q$, $q$David Grann$q$, 2017, $q$Killers of the Flower Moon$q$, $q$Martin Scorsese$q$, 2023, array[$q$Crime$q$, $q$Drama$q$, $q$Mystery$q$], $txt$In 1920s Oklahoma, members of the oil-wealthy Osage Nation are murdered one by one in a conspiracy that draws in a newly formed FBI, and one family's own husband and uncle.$txt$, $q$https://covers.openlibrary.org/b/id/8055064-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/dB6Krk806zeqd0YNp2ngQ9zXteH.jpg$q$),
  ($q$10e967cf-53b7-424f-9d7a-2d448cbb3c35$q$, $q$Poor Things$q$, $q$Alasdair Gray$q$, 1992, $q$Poor Things$q$, $q$Yorgos Lanthimos$q$, 2023, array[$q$Fantasy$q$, $q$Drama$q$, $q$Comedy$q$], $txt$A young woman brought back to life by an unorthodox scientist escapes her sheltered home to explore the world, discovering freedom, pleasure, and her own autonomy along the way.$txt$, $q$https://covers.openlibrary.org/b/id/115122-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/kCGlIMHnOm8JPXq3rXM6c5wMxcT.jpg$q$),
  ($q$2a098b49-c7ea-4b71-bc43-f7059d871bb5$q$, $q$Erasure$q$, $q$Percival Everett$q$, 2001, $q$American Fiction$q$, $q$Cord Jefferson$q$, 2023, array[$q$Comedy$q$, $q$Drama$q$], $txt$A frustrated novelist, tired of the publishing industry's appetite for stereotypical depictions of Black life, writes a deliberately outrageous parody under a pseudonym, only to watch it become the literary sensation his serious work never was.$txt$, $q$https://covers.openlibrary.org/b/id/848473-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/57MFWGHarg9jid7yfDTka4RmcMU.jpg$q$),
  ($q$4650efc2-1ca9-491e-a313-d856d77f2fef$q$, $q$The Nickel Boys$q$, $q$Colson Whitehead$q$, 2019, $q$Nickel Boys$q$, $q$RaMell Ross$q$, 2024, array[$q$Drama$q$], $txt$Two Black teenagers sent to a brutal reform school in the Jim Crow South find their friendship and their survival tested by the institution's hidden cruelty.$txt$, $q$https://covers.openlibrary.org/b/id/8747820-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/lu2vmmtStmTNMmSZl2LgrrQpLZo.jpg$q$),
  ($q$c6825300-0cf4-4d25-a2fa-02b8b39baa70$q$, $q$Conclave$q$, $q$Robert Harris$q$, 2016, $q$Conclave$q$, $q$Edward Berger$q$, 2024, array[$q$Thriller$q$, $q$Mystery$q$, $q$Drama$q$], $txt$When the Pope dies, a cardinal tasked with running the secretive conclave to elect his successor uncovers a web of ambition and hidden secrets among his fellow contenders.$txt$, $q$https://covers.openlibrary.org/b/id/8918792-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/m5x8D0bZ3eKqIVWZ5y7TnZ2oTVg.jpg$q$),
  ($q$575ee8c7-7c36-4933-930b-d6f126c965ea$q$, $q$Where the Crawdads Sing$q$, $q$Delia Owens$q$, 2018, $q$Where the Crawdads Sing$q$, $q$Olivia Newman$q$, 2022, array[$q$Mystery$q$, $q$Romance$q$, $q$Drama$q$], $txt$A young woman who raised herself alone in the marshes of the North Carolina coast becomes the prime suspect when a local man is found dead.$txt$, $q$https://covers.openlibrary.org/b/id/8362947-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/n1el846gLDXfhOvrRCsyvaAOQWv.jpg$q$),
  ($q$20701ea4-e4a9-41e0-8537-6ec5680fa473$q$, $q$A Man Called Ove$q$, $q$Fredrik Backman$q$, 2012, $q$A Man Called Otto$q$, $q$Marc Forster$q$, 2022, array[$q$Comedy$q$, $q$Drama$q$], $txt$A grieving, short-tempered widower who has given up on life finds his rigid routines upended when a lively young family moves in next door.$txt$, $q$https://covers.openlibrary.org/b/id/7437001-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/130H1gap9lFfiTF9iDrqNIkFvC9.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- Dune
  (
    $q$7caf44ba-7617-44be-89c2-488c83eb3c5c$q$::uuid,
    $q$Timeline$q$,
    $txt$The 2021 film only covers roughly the first half of the novel.$txt$,
    $txt$Villeneuve's film ends around the point where Paul and Jessica are taken in by the Fremen and Paul's visions intensify -- the second half of Herbert's novel, including Paul's rise among the Fremen and the war for Arrakis, is covered in the 2022 sequel Dune: Part Two rather than compressed into a single film.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$7caf44ba-7617-44be-89c2-488c83eb3c5c$q$::uuid,
    $q$Character$q$,
    $txt$Liet-Kynes is reimagined as a woman for the film.$txt$,
    $txt$In Herbert's novel, the Imperial planetologist Liet-Kynes is male. The 2021 film casts the role with Sharon Duncan-Brewster, changing the character's gender -- a deliberate adaptation choice that doesn't affect the character's core role in the story but is a notable, often-discussed change from the book.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$7caf44ba-7617-44be-89c2-488c83eb3c5c$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's famous in-universe epigraphs, quoted at the start of every chapter, are used far more sparingly in the film.$txt$,
    $txt$Each chapter of Herbert's book opens with a quotation from Princess Irulan's (fictional) historical writings about Paul Atreides, framing the story as something already-historical being retold. The film uses this device only occasionally, mostly as brief opening narration, rather than as the book's constant framing structure.$txt$,
    false,
    $q$approved$q$
  ),

  -- Killers of the Flower Moon
  (
    $q$42c9a404-7743-4c3b-bb04-7742fa5d84e5$q$::uuid,
    $q$Plot$q$,
    $txt$The film tells the story from inside the conspiracy; the book tells it as an outside investigation.$txt$,
    $txt$Grann's book is structured in three parts: the Osage murders as experienced by the community (centered on Mollie Burkhart), the investigation led by a young J. Edgar Hoover's fledgling FBI under agent Tom White, and finally Grann's own present-day research uncovering that the killings were far more widespread than the official case ever showed.

Scorsese's film restructures this almost entirely, centering the story from the start on Ernest Burkhart, his uncle William Hale, and Ernest's relationship with Mollie -- turning it into a story about betrayal experienced from inside the conspiracy rather than a mystery uncovered from outside it. The FBI investigation, the book's entire middle section, becomes a comparatively small part of the film.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$42c9a404-7743-4c3b-bb04-7742fa5d84e5$q$::uuid,
    $q$Character$q$,
    $txt$Tom White, the book's central investigator, is a much smaller, later-arriving character in the film.$txt$,
    $txt$The book spends its entire middle section following Agent Tom White as he pieces together the conspiracy, making him effectively a co-protagonist. Because the film restructures the story around Ernest and Mollie, White appears comparatively late and gets far less screen time than his role in the book would suggest.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$42c9a404-7743-4c3b-bb04-7742fa5d84e5$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's closing scene, a live 1940s true-crime radio show reenactment, has no equivalent in the book.$txt$,
    $txt$The film ends with a staged recreation of an old-style true-crime radio broadcast (featuring Scorsese himself) dramatizing the Osage murders for a live studio audience -- a self-aware, invented framing device commenting on how this real tragedy has been packaged as entertainment. It's the film's own addition, not something drawn from Grann's book.$txt$,
    true,
    $q$approved$q$
  ),

  -- Poor Things
  (
    $q$10e967cf-53b7-424f-9d7a-2d448cbb3c35$q$::uuid,
    $q$Plot$q$,
    $txt$The novel's unreliable, contradicting narrators are mostly dropped from the film.$txt$,
    $txt$Gray's book is presented as a "found manuscript": the bulk of it is framed as Archibald McCandless's memoir recounting Bella's fantastical reanimation and life, but the novel ends with a long letter from Bella herself that directly contradicts much of his account, throwing doubt on whether his version of events is even true.

The film largely drops this layered, contradicting-narrator structure, telling the story more directly from Bella's own point of view throughout -- which resolves a lot of the ambiguity the book deliberately leaves about how much of the story actually happened as described.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$10e967cf-53b7-424f-9d7a-2d448cbb3c35$q$::uuid,
    $q$Setting$q$,
    $txt$The film trades the book's specifically Scottish setting for a fantastical, non-specific alternate-Victorian world.$txt$,
    $txt$Gray's novel is grounded in Glasgow and carries a lot of specifically Scottish social and political commentary typical of his writing. The film reimagines the story's cities (Lisbon, Alexandria, Paris, and others) as vividly stylized, steampunk-tinged fantasy versions of themselves, downplaying the book's Scottish specificity in favor of a more untethered, fairy-tale aesthetic.$txt$,
    false,
    $q$approved$q$
  ),

  -- Erasure (American Fiction)
  (
    $q$2a098b49-c7ea-4b71-bc43-f7059d871bb5$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's title, American Fiction, doesn't come from the book at all -- Everett's novel is called Erasure.$txt$,
    $txt$The retitling reflects the film narrowing its focus: Everett's novel is a wider-ranging satire (it takes its title from the way Monk feels erased by the publishing industry's expectations of him), while the film hones in more specifically on the publishing-industry satire plotline as its central thread.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2a098b49-c7ea-4b71-bc43-f7059d871bb5$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel reproduces Monk's fake bestseller in full as interstitial chapters; the film can only show glimpses of it.$txt$,
    $txt$As a running joke and protest, Monk secretly writes a deliberately outrageous, stereotype-laden novel under a pseudonym. Everett's book actually includes large chunks of this fake novel-within-the-novel as full chapters readers have to sit through. The film, limited by runtime, can only gesture at it through shorter dramatized scenes rather than reproducing it at length.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2a098b49-c7ea-4b71-bc43-f7059d871bb5$q$::uuid,
    $q$Ending$q$,
    $txt$The film adds a self-aware, multiple-ending device that isn't in the book.$txt$,
    $txt$Everett's novel ends on an ambiguous, unresolved note, cutting off while Monk is still processing his situation. The film instead stages a meta sequence where Monk pitches several different possible Hollywood endings for "his story," openly commenting on the tropes of adapting a story like his for film -- an invented device with no direct equivalent in the source novel.$txt$,
    true,
    $q$approved$q$
  ),

  -- The Nickel Boys
  (
    $q$4650efc2-1ca9-491e-a313-d856d77f2fef$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The film is shot almost entirely in first-person point of view, a technique with no real equivalent in the prose.$txt$,
    $txt$Whitehead's novel is written in a fairly conventional close-third-person voice. Director RaMell Ross instead shoots nearly the entire film from a literal first-person camera perspective -- seeing the world through Elwood's eyes, and later Turner's -- an unusual, widely discussed stylistic choice that has no direct counterpart in how the book is written.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$4650efc2-1ca9-491e-a313-d856d77f2fef$q$::uuid,
    $q$Plot$q$,
    $txt$Both versions reveal a hidden identity twist late on, but through very different storytelling tools.$txt$,
    $txt$The novel withholds, until near the end, that the "present day" sections have actually been following Turner living under Elwood's identity rather than Elwood himself, a reveal built through careful narrative misdirection in prose. The film achieves a version of the same reveal through its own visual grammar -- shifting whose first-person view the camera occupies -- rather than the book's withheld-narrator trick.$txt$,
    true,
    $q$approved$q$
  ),

  -- Conclave
  (
    $q$c6825300-0cf4-4d25-a2fa-02b8b39baa70$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$Cardinal Lomeli's private crisis of faith is a much bigger interior thread in the novel.$txt$,
    $txt$Harris's book spends considerable time inside Lomeli's own doubts about God and his faith, laid out through his internal reflection as he runs the conclave. The film conveys much of this through Ralph Fiennes's restrained performance and visual staging rather than extended interior narration, since film has fewer native tools for that kind of sustained first-person reflection.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$c6825300-0cf4-4d25-a2fa-02b8b39baa70$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book spends more time on the individual factions and political maneuvering across the conclave's many rounds of voting.$txt$,
    $txt$Harris's novel tracks the shifting alliances and backroom dealing between cardinals in more granular detail across the conclave's repeated ballots. The film compresses this political chess match considerably to keep the pacing tight for a two-hour runtime.$txt$,
    false,
    $q$approved$q$
  ),

  -- Where the Crawdads Sing
  (
    $q$575ee8c7-7c36-4933-930b-d6f126c965ea$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's detailed nature writing about the marsh is largely trimmed from the film.$txt$,
    $txt$Owens, herself a trained wildlife scientist, fills the book with extensive passages about the marsh's plants and animals, reflecting Kya's self-taught expertise as a naturalist. The film keeps the marsh as a visual backdrop but necessarily cuts most of this interior scientific reflection to focus on the mystery and romance plotlines.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$575ee8c7-7c36-4933-930b-d6f126c965ea$q$::uuid,
    $q$Character$q$,
    $txt$Jumpin' and Mabel, the shopkeepers who effectively raise Kya, have a smaller role in the film.$txt$,
    $txt$The book spends real time on this couple's ongoing support of Kya over the years and their place in the Black community of the town, distinct from the white townsfolk who shun her. The film keeps the couple's kindness toward Kya but gives their own community and backstory considerably less screen time.$txt$,
    false,
    $q$approved$q$
  ),

  -- A Man Called Ove (A Man Called Otto)
  (
    $q$20701ea4-e4a9-41e0-8537-6ec5680fa473$q$::uuid,
    $q$Character$q$,
    $txt$The pivotal neighbor character's background changes along with the setting for the American remake.$txt$,
    $txt$In Backman's novel, the family that moves in next door and upends Ove's routines is led by Parvaneh, an Iranian immigrant. A Man Called Otto relocates the whole story from Sweden to an American suburb, and the equivalent character, Marisol, is reworked as a Mexican-American immigrant to fit the new setting.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$20701ea4-e4a9-41e0-8537-6ec5680fa473$q$::uuid,
    $q$Setting$q$,
    $txt$This film is an English-language remake of a 2015 Swedish film, not a first adaptation of the novel.$txt$,
    $txt$A Man Called Otto Americanizes not just the book but effectively remakes En man som heter Ove, the 2015 Swedish film already based on Backman's novel -- renaming the protagonist Ove to Otto, moving the setting from Sweden to the United States, and adjusting cultural specifics (including the brand-loyalty car feud that runs through the story) to fit an American suburb.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$20701ea4-e4a9-41e0-8537-6ec5680fa473$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book's flashback chapters covering Ove's life with his wife are trimmed and reordered in the film.$txt$,
    $txt$Backman's novel alternates steadily between present-day Ove and an extended series of flashbacks tracing his whole relationship with his late wife Sonja. The film keeps this structure but compresses and reorders a fair amount of that flashback material to fit a feature runtime.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
