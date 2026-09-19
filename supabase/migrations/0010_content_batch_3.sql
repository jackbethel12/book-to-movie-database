-- ============================================================================
-- Content batch 3: Jaws, The Princess Bride, The Wizard of Oz, Big Fish
-- ============================================================================
-- Every field here uses dollar quoting ($q$...$q$ for short fields,
-- $txt$...$txt$ for the longer prose fields), never a plain apostrophe
-- quote mark, so there is nothing for autocorrect/smart-quotes to mangle
-- on copy and paste.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis)
values
  ($q$45d99e4b-7f25-4cab-af66-f557362fa7f6$q$, $q$Jaws$q$, $q$Peter Benchley$q$, 1974, $q$Jaws$q$, $q$Steven Spielberg$q$, 1975, array[$q$Thriller$q$, $q$Horror$q$], $txt$When a great white shark begins terrorizing a small resort town, the local police chief teams up with a marine biologist and a grizzled shark hunter to stop it before summer tourist season is ruined for good.$txt$),
  ($q$1f20b194-2e7f-4d53-99e3-d9b8b0c3ed75$q$, $q$The Princess Bride$q$, $q$William Goldman$q$, 1973, $q$The Princess Bride$q$, $q$Rob Reiner$q$, 1987, array[$q$Fantasy$q$, $q$Adventure$q$, $q$Comedy$q$, $q$Romance$q$], $txt$A farm boy sets out to rescue the love of his life from an arranged marriage to a cruel prince, battling giants, swordsmen, and a six-fingered man along the way, all narrated as a bedtime story a grandfather reads to his sick grandson.$txt$),
  ($q$f07aa83a-182a-453e-817c-f015ad403ac0$q$, $q$The Wonderful Wizard of Oz$q$, $q$L. Frank Baum$q$, 1900, $q$The Wizard of Oz$q$, $q$Victor Fleming$q$, 1939, array[$q$Fantasy$q$, $q$Family$q$], $txt$A Kansas farm girl is swept away by a tornado to a magical land, where she must follow a road of yellow brick to seek help from a wizard who can send her home, gathering unlikely friends along the way.$txt$),
  ($q$d47a1e13-de70-472b-bce0-dd8e59222bc1$q$, $q$Big Fish: A Novel of Mythic Proportions$q$, $q$Daniel Wallace$q$, 1998, $q$Big Fish$q$, $q$Tim Burton$q$, 2003, array[$q$Drama$q$, $q$Fantasy$q$], $txt$A son tries to separate fact from myth in the tall tales his dying father has told about his own life for decades, only to discover the stories might reveal something truer than plain facts ever could.$txt$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- Jaws
  (
    $q$45d99e4b-7f25-4cab-af66-f557362fa7f6$q$::uuid,
    $q$Character$q$,
    $txt$The book gives marine biologist Hooper an affair that the film cuts entirely.$txt$,
    $txt$In Benchley's novel, Matt Hooper has an affair with police chief Martin Brody's wife, Ellen -- a significant subplot that adds tension and resentment between Brody and Hooper throughout the book.

The film drops this completely, leaving Hooper as a straightforwardly likeable ally to Brody with no personal conflict between them, which changes the dynamic of the three men on the boat considerably.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$45d99e4b-7f25-4cab-af66-f557362fa7f6$q$::uuid,
    $q$Ending$q$,
    $txt$Quint and Hooper meet different fates depending on the version.$txt$,
    $txt$In the novel, Quint is dragged down into the ocean and drowns, tangled in his own harpoon lines as the wounded shark sinks. It is a grim, almost anticlimactic death compared to what the film does with the character.

The film has Quint eaten alive on camera as the boat sinks, a far more visceral and famous set piece. Hooper survives in both versions by hiding in his submerged shark cage, though the film stages this with considerably more suspense for the camera.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$45d99e4b-7f25-4cab-af66-f557362fa7f6$q$::uuid,
    $q$Character$q$,
    $txt$Book Hooper and Quint have a more openly class-conflicted relationship.$txt$,
    $txt$Benchley writes Hooper as wealthy and somewhat entitled, which creates real friction with the working-class, weathered Quint throughout the novel -- their dynamic is tense and often adversarial.

The film softens this considerably and instead builds camaraderie between the three men, most famously in the scene where they drunkenly sing "Show Me the Way to Go Home" together, comparing scars -- a scene invented for the film with no equivalent in the book.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$45d99e4b-7f25-4cab-af66-f557362fa7f6$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel spends much more time on small-town political corruption.$txt$,
    $txt$Benchley's book gives real weight to a subplot about the town mayor's financial ties to organized crime and his pressure to keep the beaches open purely for tourist dollars, despite the danger -- it is a bigger, more cynical thread running through the novel.

The film simplifies the mayor into a more straightforward "denial for the sake of tourism" antagonist, trimming out most of the organized-crime angle in favor of keeping the story focused on the hunt for the shark.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Princess Bride
  (
    $q$1f20b194-2e7f-4d53-99e3-d9b8b0c3ed75$q$::uuid,
    $q$Added Content$q$,
    $txt$The novel has an extra layer of fictional framing that the film drops entirely.$txt$,
    $txt$Both versions use a frame story of an older narrator reading the tale to a sick child. But Goldman's novel wraps this in an additional layer of fiction: it is presented as Goldman's own abridgement of a much longer, fictional satirical novel by "S. Morgenstern," with Goldman inserting himself as a fictionalized editor who periodically explains what he is cutting and why.

The film drops this literary-satire framing entirely and simply uses the straightforward grandfather-reading-to-grandson device, without the fictional Morgenstern/editor conceit.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$1f20b194-2e7f-4d53-99e3-d9b8b0c3ed75$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Several longer sequences and backstories from the book are trimmed or cut.$txt$,
    $txt$The novel includes an extended sequence involving the Zoo of Death, a torture-filled royal menagerie, along with considerably more of Buttercup's backstory and her time at court before the main events of the story begin.

The film compresses or removes most of this material to keep the pacing brisk, focusing on the adventure elements audiences remember most.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$1f20b194-2e7f-4d53-99e3-d9b8b0c3ed75$q$::uuid,
    $q$Character$q$,
    $txt$Fezzik and Inigo get standalone backstory chapters in the book.$txt$,
    $txt$Goldman's novel gives both Fezzik and Inigo Montoya extended flashback chapters of their own, fleshing out how they came to be who they are well before they meet Westley.

The film compresses these origins into brief, efficient dialogue exchanges delivered on the fly during the adventure, rather than dedicated standalone sequences.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$1f20b194-2e7f-4d53-99e3-d9b8b0c3ed75$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The book is more openly satirical about the fairy-tale genre itself.$txt$,
    $txt$The novel frequently interrupts its own story with the fictional editor's snarky commentary on fairy-tale conventions, playing much of the material for genre satire.

The film keeps plenty of wit and self-aware humor but plays the central adventure and romance more sincerely overall, without that constant ironic narrative interruption.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Wizard of Oz
  (
    $q$f07aa83a-182a-453e-817c-f015ad403ac0$q$::uuid,
    $q$Added Content$q$,
    $txt$The famous "it was all a dream" ending is a film invention.$txt$,
    $txt$The film adds a framing device where Dorothy is knocked unconscious in the tornado and wakes up in her Kansas bedroom, surrounded by the same actors who played her Oz companions as farmhands and a traveling fortune teller -- implying Oz was just a dream.

In Baum's original novel, Oz is a real place that Dorothy genuinely visits, and the book never suggests otherwise -- in fact, Baum wrote many sequels in which Dorothy returns to Oz as an actual, ongoing place in the story's world.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$f07aa83a-182a-453e-817c-f015ad403ac0$q$::uuid,
    $q$Character$q$,
    $txt$Dorothy's magic shoes are silver in the book, not ruby red.$txt$,
    $txt$In Baum's novel, the shoes Dorothy takes from the Wicked Witch of the East are described as silver.

The film changed them to ruby red specifically to take advantage of the new Technicolor process, since red shoes would pop dramatically on screen in a way silver ones would not have photographed nearly as well.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$f07aa83a-182a-453e-817c-f015ad403ac0$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book includes several adventures that never made it into the film.$txt$,
    $txt$Baum's novel sends the travelers through a forest of fighting trees, across a delicate china-doll country they must cross without breaking anything, and past a pack of hostile Kalidahs -- tiger-bodied, bear-headed creatures that chase the group.

None of these sequences appear in the film, which streamlines the journey down the yellow brick road considerably compared to the book's more episodic string of encounters.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$f07aa83a-182a-453e-817c-f015ad403ac0$q$::uuid,
    $q$Setting$q$,
    $txt$The Wicked Witch of the West has a more elaborate backstory and power source in the book.$txt$,
    $txt$In the novel, the Wicked Witch of the West has only one eye and commands an army of Winkie soldiers and animals through a magic golden cap she controls, rather than through pure menace alone.

The film simplifies her into a more singularly cackling, straightforwardly evil villain, without that magical golden cap or the more detailed political control over the Winkies described in the book.$txt$,
    false,
    $q$approved$q$
  ),

  -- Big Fish
  (
    $q$d47a1e13-de70-472b-bce0-dd8e59222bc1$q$::uuid,
    $q$Plot$q$,
    $txt$The film invents a much stronger central frame story than the book has.$txt$,
    $txt$Wallace's novel is structured as a loose series of short stories and vignettes about the father, Edward Bloom, without much of a unifying present-day plot connecting them.

The film invents a far more focused frame story: the son, Will, trying to reconcile with his dying father and finally understand him before it is too late, giving the film a clearer emotional throughline than the book's more fragmented structure.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$d47a1e13-de70-472b-bce0-dd8e59222bc1$q$::uuid,
    $q$Character$q$,
    $txt$Will's own personal and married life is far more developed in the film.$txt$,
    $txt$In the novel, the son's home life and marriage are barely sketched in at all -- the book is almost entirely devoted to the father's tall tales rather than the son's parallel story.

The film gives Will's wife and their own relationship considerably more screen time, using it to mirror and comment on Edward's own choices and marriage.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$d47a1e13-de70-472b-bce0-dd8e59222bc1$q$::uuid,
    $q$Added Content$q$,
    $txt$Several of the film's most memorable sequences are new or greatly expanded from the book.$txt$,
    $txt$The giant Karl joining the circus, the witch with a glass eye that shows how you will die, and the werewolf ringmaster are all inventions or major expansions by screenwriter John August, built out from much smaller or entirely absent moments in Wallace's novel.

These sequences became some of the film's most visually iconic scenes, despite having little or no direct basis in the source material.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$d47a1e13-de70-472b-bce0-dd8e59222bc1$q$::uuid,
    $q$Ending$q$,
    $txt$The book and film end on different notes after Edward's death.$txt$,
    $txt$The novel ends more abstractly, focused on the son's quiet meditation on storytelling, memory, and what it means to really know a parent, after his father has died.

The film gives a more concrete, emotional deathbed scene where Will finally tells his father's own story back to him in the hospital, followed by an actual funeral attended by all the tall-tale characters, revealed to be based on real people after all.$txt$,
    true,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries d
  where d.adaptation_id = v.adaptation_id and d.summary = v.summary
);
