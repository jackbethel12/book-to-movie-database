-- ============================================================================
-- Content batch 6: Misery, Psycho, A Clockwork Orange, The Talented Mr.
-- Ripley, Starship Troopers, Children of Men, Interview with the Vampire,
-- The Green Mile
-- ============================================================================
-- Same format as previous content batches: dollar quoting throughout
-- ($q$...$q$ for short fields, $txt$...$txt$ for longer prose) so apostrophes
-- never need manual escaping. Poster/cover URLs were looked up via TMDB and
-- Open Library and confirmed to resolve before being included here.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$93f0cc29-c899-49d8-a519-d54b746e40cb$q$, $q$Misery$q$, $q$Stephen King$q$, 1987, $q$Misery$q$, $q$Rob Reiner$q$, 1990, array[$q$Thriller$q$, $q$Horror$q$], $txt$After a famous novelist crashes his car in a remote snowstorm, his self-proclaimed number one fan rescues him, and refuses to let him leave until he has written the book she wants.$txt$, $q$https://covers.openlibrary.org/b/id/15101404-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/klPO5oh1LOxiPpdDXZo1ADgpKcw.jpg$q$),
  ($q$2a522f08-ecb0-46f4-b33e-eb1f13144c80$q$, $q$Psycho$q$, $q$Robert Bloch$q$, 1959, $q$Psycho$q$, $q$Alfred Hitchcock$q$, 1960, array[$q$Horror$q$, $q$Thriller$q$, $q$Mystery$q$], $txt$A woman on the run with stolen money checks into a secluded motel run by a peculiar young man who lives under the shadow of his domineering mother.$txt$, $q$https://covers.openlibrary.org/b/id/477808-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/yz4QVqPx3h1hD1DfqqQkCq3rmxW.jpg$q$),
  ($q$000a5929-8277-4666-bf8a-2b3998c3cde8$q$, $q$A Clockwork Orange$q$, $q$Anthony Burgess$q$, 1962, $q$A Clockwork Orange$q$, $q$Stanley Kubrick$q$, 1971, array[$q$Science Fiction$q$, $q$Crime$q$, $q$Drama$q$], $txt$In a near-future Britain, a violent teenage delinquent is subjected to a controversial experimental treatment meant to cure him of his taste for ultra-violence, with unexpected consequences.$txt$, $q$https://covers.openlibrary.org/b/id/14430663-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/4sHeTAp65WrSSuc05nRBKddhBxO.jpg$q$),
  ($q$a7bcb2f3-7ea7-4fd6-b3a6-1716bcaecc58$q$, $q$The Talented Mr. Ripley$q$, $q$Patricia Highsmith$q$, 1955, $q$The Talented Mr. Ripley$q$, $q$Anthony Minghella$q$, 1999, array[$q$Thriller$q$, $q$Crime$q$, $q$Drama$q$], $txt$A young con man is sent to Italy to bring home the wayward son of a wealthy shipping magnate, but becomes dangerously obsessed with the glamorous life he is meant to be retrieving him from.$txt$, $q$https://covers.openlibrary.org/b/id/2198258-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/6ojHgqtIR41O2qLKa7LFUVj0cZa.jpg$q$),
  ($q$10b80f8c-65af-436e-b599-51376794140b$q$, $q$Starship Troopers$q$, $q$Robert A. Heinlein$q$, 1959, $q$Starship Troopers$q$, $q$Paul Verhoeven$q$, 1997, array[$q$Science Fiction$q$, $q$Adventure$q$], $txt$A young recruit joins the Mobile Infantry to fight in an interstellar war against a race of giant alien Bugs, in a future society where full citizenship must be earned through military service.$txt$, $q$https://covers.openlibrary.org/b/id/14630746-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/cxCmv23O7p3hyHwqoktHYkZcGsY.jpg$q$),
  ($q$a8e823c1-e551-4ec5-a924-e573d9a28e1b$q$, $q$The Children of Men$q$, $q$P.D. James$q$, 1992, $q$Children of Men$q$, $q$Alfonso Cuaron$q$, 2006, array[$q$Science Fiction$q$, $q$Dystopian$q$, $q$Thriller$q$], $txt$In a near-future where humanity has become infertile and society is collapsing, a disillusioned bureaucrat is tasked with protecting the one pregnant woman left on Earth.$txt$, $q$https://covers.openlibrary.org/b/id/14859238-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/k9IAS4TehZFcKi4HVByxZNPfqex.jpg$q$),
  ($q$d0087873-5418-42d7-8918-3c27afbd4b1c$q$, $q$Interview with the Vampire$q$, $q$Anne Rice$q$, 1976, $q$Interview with the Vampire$q$, $q$Neil Jordan$q$, 1994, array[$q$Horror$q$, $q$Fantasy$q$, $q$Drama$q$], $txt$A 200-year-old vampire recounts his tortured life story to a young reporter, from his reluctant transformation to his complicated, centuries-long relationship with the vampire who made him.$txt$, $q$https://covers.openlibrary.org/b/id/8401488-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/t7NU8IcmcNBrlunCxiycX9JV7Rp.jpg$q$),
  ($q$989a9314-3fc2-43ac-a511-2b193accb18c$q$, $q$The Green Mile$q$, $q$Stephen King$q$, 1996, $q$The Green Mile$q$, $q$Frank Darabont$q$, 1999, array[$q$Drama$q$, $q$Fantasy$q$], $txt$A death row prison guard in 1930s Louisiana comes to know an enormous, gentle inmate convicted of a brutal crime, whose extraordinary gift raises questions about his guilt.$txt$, $q$https://covers.openlibrary.org/b/id/9334567-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/8VG8fDNiy50H4FedGwdSVUPoaJe.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- Misery
  (
    $q$93f0cc29-c899-49d8-a519-d54b746e40cb$q$::uuid,
    $q$Plot$q$,
    $txt$Annie's punishment for Paul trying to leave is far more brutal in the book.$txt$,
    $txt$In King's novel, when Annie catches Paul attempting to get help, she punishes him by amputating his foot with an axe and, later in the story, one of his thumbs -- a process the book refers to as "hobbling," borrowed from the injury Annie inflicts to keep him from ever running again.

The film, one of the most famous softenings in the genre, changes this to Annie breaking both of Paul's ankles with a sledgehammer instead. It's still brutal and became an iconic scene in its own right, but it avoids the amputation entirely.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$93f0cc29-c899-49d8-a519-d54b746e40cb$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$Paul's addiction to painkillers colors much more of the novel's narration.$txt$,
    $txt$The book spends a lot of time inside Paul's drug-hazed state of mind, since Annie controls his access to the Novril he's dependent on for pain, and his perception of events becomes increasingly unreliable as a result. The film keeps the addiction as a plot point but doesn't lean on it nearly as heavily as a narrative device.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$93f0cc29-c899-49d8-a519-d54b746e40cb$q$::uuid,
    $q$Ending$q$,
    $txt$The final confrontation between Paul and Annie plays out differently in each version.$txt$,
    $txt$The novel's climax has Paul force-feeding Annie the burned pages of the manuscript she's obsessed with before the two of them fight it out with the typewriter itself. The film restages this final struggle for the screen with its own choreography and pacing, though the broad outcome -- Paul finally overpowering Annie -- stays the same in both.$txt$,
    true,
    $q$approved$q$
  ),

  -- Psycho
  (
    $q$2a522f08-ecb0-46f4-b33e-eb1f13144c80$q$::uuid,
    $q$Character$q$,
    $txt$Norman Bates looks nothing like Anthony Perkins in the original novel.$txt$,
    $txt$Bloch's book describes Norman as an overweight, balding, middle-aged man with a drinking problem, closer in description to the real-life killer Ed Gein who partly inspired the character. Hitchcock's casting of a young, slender, boyish Anthony Perkins recast Norman as outwardly charming and sympathetic, which is now how the character is almost universally remembered.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2a522f08-ecb0-46f4-b33e-eb1f13144c80$q$::uuid,
    $q$Added Content$q$,
    $txt$The shower scene is a far bigger set piece in the film than in the book.$txt$,
    $txt$In the novel, Marion's murder in the shower is described in a comparatively brief passage. Hitchcock expanded it into an elaborately storyboarded, intricately edited sequence of nearly 80 cuts in under a minute, using suggestion rather than graphic detail -- it became one of the most studied and imitated scenes in film history, far beyond what the book's version implies.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$2a522f08-ecb0-46f4-b33e-eb1f13144c80$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Norman's interest in occult and esoteric books from the novel is cut from the film.$txt$,
    $txt$Bloch's Norman is an avid reader of books on witchcraft, spiritualism, and the occult, which feeds into his fractured psychology throughout the novel. The film drops this character detail entirely, keeping the focus on the motel, the house, and his relationship with "Mother."$txt$,
    false,
    $q$approved$q$
  ),

  -- A Clockwork Orange
  (
    $q$000a5929-8277-4666-bf8a-2b3998c3cde8$q$::uuid,
    $q$Ending$q$,
    $txt$The film is missing the novel's final chapter, but so was the U.S. edition Kubrick read.$txt$,
    $txt$Burgess's original British edition ends with a 21st chapter in which an older Alex grows tired of violence on his own and starts to imagine an ordinary adult life -- a genuinely hopeful, redemptive ending. American publishers cut that chapter from the U.S. edition, feeling it was too soft, ending the story instead on Alex's cured-then-uncured line, "I was cured all right."

Kubrick worked from the American edition and was reportedly unaware the final chapter existed until after the film was made, so the movie's darker, more ambiguous ending isn't really a deliberate change from the book -- it's the ending of a specific edition of the book that had already been altered before Kubrick ever got to it.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$000a5929-8277-4666-bf8a-2b3998c3cde8$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is narrated entirely in Alex's invented slang, which the film can only partly replicate.$txt$,
    $txt$Burgess wrote the book in Nadsat, a fictional teen slang blending English with Russian-derived words, forcing readers to absorb Alex's vocabulary as they go -- a huge part of the novel's identity and its way of putting the reader inside his head. The film uses Alex's voiceover narration to preserve some of this flavor, but a two-hour film naturally can't recreate the same full immersive effect of reading an entire novel in his invented dialect.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$000a5929-8277-4666-bf8a-2b3998c3cde8$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's stylized, classical-music-scored violence is very much Kubrick's own aesthetic choice.$txt$,
    $txt$The novel's "ultra-violence" is disturbing on the page, but the film's specific choice to stage it with balletic, theatrical camera work and set it to classical pieces like Rossini and Beethoven (tying into Alex's own love of "Ludwig van") is a distinctly cinematic invention that shapes how audiences experience the violence very differently than reading Burgess's prose does.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Talented Mr. Ripley
  (
    $q$a7bcb2f3-7ea7-4fd6-b3a6-1716bcaecc58$q$::uuid,
    $q$Ending$q$,
    $txt$Ripley gets away completely clean in the novel; the film leaves him far more isolated and guilt-ridden.$txt$,
    $txt$Highsmith's novel ends with Tom Ripley having successfully murdered both Dickie and Freddie, inherited Dickie's money and identity, and evaded all suspicion -- he's anxious but essentially triumphant, setting up four further novels following his continued life of crime.

The film gives Tom a much heavier ending: to protect his secret he's forced to also kill Peter Smith-Kingsley, a character invented for the movie who has genuinely fallen for him, leaving Tom alone, isolated, and visibly consumed by guilt in the film's final scene -- a far less "successful" resolution than the novel's.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$a7bcb2f3-7ea7-4fd6-b3a6-1716bcaecc58$q$::uuid,
    $q$Character$q$,
    $txt$Peter Smith-Kingsley does not exist in the novel at all.$txt$,
    $txt$Peter, whose relationship with Tom becomes central to the film's final act (and its darker ending), was created for the movie. His absence from the book means the novel's Tom never has to weigh betraying someone who genuinely loves him, which is a large part of what makes the film's version of the character feel more tragic.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$a7bcb2f3-7ea7-4fd6-b3a6-1716bcaecc58$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The film is considerably more explicit about Tom's attraction to Dickie than the novel is.$txt$,
    $txt$Highsmith keeps Tom's feelings toward Dickie ambiguous and repressed, filtered through his obsessive desire to become him rather than be with him. The film, made over four decades later, is more direct about the romantic and sexual undercurrent in Tom's fixation, giving it more overt weight than the novel allows itself.$txt$,
    false,
    $q$approved$q$
  ),

  -- Starship Troopers
  (
    $q$10b80f8c-65af-436e-b599-51376794140b$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The film is a satire of the book's politics, not a straight adaptation of them.$txt$,
    $txt$Heinlein's novel is an earnest work of military science fiction that takes its future society's "service guarantees citizenship" system seriously, exploring the philosophy behind it through Johnny Rico's coming-of-age and lengthy classroom debates.

Director Paul Verhoeven has said he found the book's politics troubling and deliberately made the film as a satire, staging it with intentionally cartoonish, fascist-flavored propaganda interludes ("Would you like to know more?") to mock the militarism the novel presents sincerely. It's widely considered one of the biggest tonal reversals of any book-to-film adaptation.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$10b80f8c-65af-436e-b599-51376794140b$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The powered armor suits central to the novel never appear in the film.$txt$,
    $txt$In the book, the Mobile Infantry fights inside advanced powered exoskeleton suits that give them enhanced strength and firepower, a technology Heinlein spends a lot of time detailing. The film's soldiers fight the Bugs with conventional weapons and no powered armor at all, a change largely attributed to budget and practicality that book fans still bring up often.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$10b80f8c-65af-436e-b599-51376794140b$q$::uuid,
    $q$Character$q$,
    $txt$Dizzy Flores has a much bigger role in the film, including a death that doesn't happen in the book.$txt$,
    $txt$In the film, Dizzy becomes a significant character with an unrequited romantic thread toward Johnny and dies during the Klendathu invasion, one of the film's more emotional beats. In Heinlein's novel she's a much more minor presence and doesn't die in the story at all -- her expanded role and death are the film's own addition.$txt$,
    true,
    $q$approved$q$
  ),

  -- The Children of Men
  (
    $q$a8e823c1-e551-4ec5-a924-e573d9a28e1b$q$::uuid,
    $q$Setting$q$,
    $txt$The novel's dystopian Britain is run by a named Warden and Council; the film keeps things more ambiguous.$txt$,
    $txt$P.D. James's novel gives its future England an explicit ruling structure: Xan Lyppiatt, Theo's cousin, holds power as the Warden of England alongside a small governing Council, enforcing policies like forced repatriation and state-run suicide facilities called Quietus.

The film keeps the general atmosphere of authoritarian collapse and refugee crackdowns but never names a specific ruler or council in the same way, presenting the state more as a chaotic militarized bureaucracy than James's more clearly defined, almost fascist regime.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$a8e823c1-e551-4ec5-a924-e573d9a28e1b$q$::uuid,
    $q$Character$q$,
    $txt$The pregnant woman and the resistance group around her are reimagined for the film.$txt$,
    $txt$In the novel she's named Julian and belongs to a small dissident group called the Five Fishes. The film renames her Kee and reworks the equivalent resistance group, the Fishes, into a more overtly political and morally compromised faction that ultimately wants to use the baby for its own leverage -- a more cynical portrayal of the resistance than the book's version.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$a8e823c1-e551-4ec5-a924-e573d9a28e1b$q$::uuid,
    $q$Ending$q$,
    $txt$Theo's fate at the end of the story is almost completely opposite between the two versions.$txt$,
    $txt$In James's novel, Theo ends up killing his cousin Xan and effectively inherits his position of power, becoming the new ruler of England -- an ambiguous, cyclical ending about how power replicates itself even in someone who opposed it.

The film's Theo has no claim to power at all; he dies at the very end of the film after successfully getting Kee and her newborn to the Human Project's boat, an entirely self-sacrificing ending that shares almost nothing with the book's conclusion beyond the survival of mother and child.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$a8e823c1-e551-4ec5-a924-e573d9a28e1b$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's famous ceasefire scene, where soldiers stop fighting to let the baby pass, has no equivalent in the book.$txt$,
    $txt$One of the film's most acclaimed sequences has both soldiers and rebels briefly halt an active battle in stunned silence as Kee carries her newborn through a warzone. It's an entirely cinematic invention -- the novel's much quieter birth is witnessed by only a handful of characters, with nothing resembling this scene's public, wordless reaction.$txt$,
    true,
    $q$approved$q$
  ),

  -- Interview with the Vampire
  (
    $q$d0087873-5418-42d7-8918-3c27afbd4b1c$q$::uuid,
    $q$Ending$q$,
    $txt$What happens to the young reporter after the interview is very different in each version.$txt$,
    $txt$In the novel, the stunned interviewer drives off after hearing Louis's story and, per the sequels, becomes obsessed enough to go seek out Lestat himself. The film compresses this into an immediate, dramatic final scare: as Daniel drives away, Lestat suddenly appears in the car and attacks him on the Golden Gate Bridge, a much more abrupt and visual ending invented for the movie.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$d0087873-5418-42d7-8918-3c27afbd4b1c$q$::uuid,
    $q$Character$q$,
    $txt$Claudia is turned into a vampire as a young child in the book, but is aged up considerably for the film.$txt$,
    $txt$Anne Rice's novel has Claudia turned at around five or six years old, making her centuries of being trapped in a toddler's body an especially disturbing part of her arc. The film ages her up to roughly ten to twelve (played by Kirsten Dunst) for practical and ethical filming reasons, which softens, though doesn't eliminate, that element of her story.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$d0087873-5418-42d7-8918-3c27afbd4b1c$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Louis's life as a plantation owner before becoming a vampire is far more developed in the novel.$txt$,
    $txt$The book spends considerable time on Louis's guilt-ridden life running a Louisiana plantation before Lestat turns him, grounding his later remorse in a specific, detailed human backstory. The film compresses this into a much shorter opening stretch to get to the vampire story sooner.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Green Mile
  (
    $q$989a9314-3fc2-43ac-a511-2b193accb18c$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is framed as Paul's own written memoir, not just his spoken memory.$txt$,
    $txt$King's book has the elderly Paul Edgecombe literally writing these events down by hand at his nursing home, a first-person document the reader is essentially reading over his shoulder. The film keeps the nursing-home framing device but naturally can't replicate that literary conceit -- the "remembered" scenes are simply shown as flashback footage rather than filtered through Paul's own written words.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$989a9314-3fc2-43ac-a511-2b193accb18c$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Several of the supporting guards and inmates get considerably more backstory in the book.$txt$,
    $txt$Originally published as a six-part serialized novel, King's book had the space to flesh out characters like Arlen Bitterbuck and other death-row inmates well beyond what a single film's runtime can accommodate. The film, faithful as it is overall, necessarily narrows its focus mostly to Paul, John Coffey, Percy, and Wild Bill.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$989a9314-3fc2-43ac-a511-2b193accb18c$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Delacroix's botched execution is even more harrowing to read in the novel than it is to watch in the film.$txt$,
    $txt$Both versions depict the execution going horribly wrong, but King's prose lingers on Delacroix's prolonged suffering in more graphic, visceral detail than the film's already-disturbing version of the scene, which is widely considered one of the hardest moments in either the book or the movie to sit through.$txt$,
    true,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
