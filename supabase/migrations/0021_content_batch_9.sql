-- ============================================================================
-- Content batch 9: Watchmen, V for Vendetta, Jumanji, How to Train Your
-- Dragon, The Giver, Ready Player One, The Girl with the Dragon Tattoo,
-- Q & A (Slumdog Millionaire)
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve. Note: V for
-- Vendetta's film released 2006 (not 2005) per TMDB, despite the graphic
-- novel's collected edition being commonly dated 1988-1990.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$dc97b2e1-2fb6-4a07-8a91-6b99364d2024$q$, $q$Watchmen$q$, $q$Alan Moore and Dave Gibbons$q$, 1987, $q$Watchmen$q$, $q$Zack Snyder$q$, 2009, array[$q$Science Fiction$q$, $q$Thriller$q$], $txt$In an alternate 1985 where masked vigilantes once policed the streets, the murder of a former hero draws his estranged old colleagues into a conspiracy that threatens to reshape the world.$txt$, $q$https://covers.openlibrary.org/b/id/7774899-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/aVURelN3pM56lFM7Dgfs5TixcIf.jpg$q$),
  ($q$5b778306-a682-4956-a720-bd875dd1eac6$q$, $q$V for Vendetta$q$, $q$Alan Moore and David Lloyd$q$, 1988, $q$V for Vendetta$q$, $q$James McTeigue$q$, 2006, array[$q$Science Fiction$q$, $q$Thriller$q$, $q$Dystopian$q$], $txt$In a totalitarian future Britain, a masked vigilante wages a one-man campaign against the fascist regime in power, drawing an ordinary young woman into his fight for revolution.$txt$, $q$https://covers.openlibrary.org/b/id/12293384-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/1avD1JeaRiJX5M4ahPdZPypGoGN.jpg$q$),
  ($q$69e3df2b-af43-470d-86ed-72473ac72c5f$q$, $q$Jumanji$q$, $q$Chris Van Allsburg$q$, 1981, $q$Jumanji$q$, $q$Joe Johnston$q$, 1995, array[$q$Adventure$q$, $q$Fantasy$q$, $q$Family$q$], $txt$Two children discover a mysterious jungle-adventure board game, and quickly learn that every roll of the dice unleashes its dangers into the real world.$txt$, $q$https://covers.openlibrary.org/b/id/255573-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/bdHG5Mo83VPobeZZdlSz0Y7HQHB.jpg$q$),
  ($q$05c8e616-4123-43bb-8f42-d5f71023065b$q$, $q$How to Train Your Dragon$q$, $q$Cressida Cowell$q$, 2003, $q$How to Train Your Dragon$q$, $q$Dean DeBlois and Chris Sanders$q$, 2010, array[$q$Fantasy$q$, $q$Adventure$q$, $q$Family$q$], $txt$A young Viking who doesn't fit in with his village's dragon-fighting culture befriends the very dragon he was supposed to defeat, changing how his people see dragons forever.$txt$, $q$https://covers.openlibrary.org/b/id/190086-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/ygGmAO60t8GyqUo9xYeYxSZAR3b.jpg$q$),
  ($q$2013172d-5da1-42a2-98c6-419938052e64$q$, $q$The Giver$q$, $q$Lois Lowry$q$, 1993, $q$The Giver$q$, $q$Phillip Noyce$q$, 2014, array[$q$Science Fiction$q$, $q$Dystopian$q$, $q$Young Adult$q$], $txt$In a tightly controlled community that has eliminated pain, conflict, and choice, a boy chosen to inherit society's collective memories begins to question everything he's been taught.$txt$, $q$https://covers.openlibrary.org/b/id/8352502-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/dul62Av4pgi5x8LP7ELHzNyka9Z.jpg$q$),
  ($q$69ca6b9d-c421-4c4c-84cb-ea133a355875$q$, $q$Ready Player One$q$, $q$Ernest Cline$q$, 2011, $q$Ready Player One$q$, $q$Steven Spielberg$q$, 2018, array[$q$Science Fiction$q$, $q$Adventure$q$], $txt$In a dystopian future where most of humanity escapes into a vast virtual reality, a teenager races to solve a series of puzzles left behind by the simulation's creator for a chance to inherit his fortune.$txt$, $q$https://covers.openlibrary.org/b/id/8737626-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/pU1ULUq8D3iRxl1fdX2lZIzdHuI.jpg$q$),
  ($q$8d0b6a00-c85e-4805-a471-6d5b2b2c0db1$q$, $q$The Girl with the Dragon Tattoo$q$, $q$Stieg Larsson$q$, 2005, $q$The Girl with the Dragon Tattoo$q$, $q$David Fincher$q$, 2011, array[$q$Thriller$q$, $q$Mystery$q$, $q$Crime$q$], $txt$A disgraced journalist investigating a decades-old disappearance teams up with a brilliant, troubled hacker to uncover a family's dark secrets.$txt$, $q$https://covers.openlibrary.org/b/id/9274740-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/8bokS83zGdhaXgN9tjidUKmAftW.jpg$q$),
  ($q$e024a354-8f46-4045-bede-2f9e8805d1fa$q$, $q$Q & A$q$, $q$Vikas Swarup$q$, 2005, $q$Slumdog Millionaire$q$, $q$Danny Boyle$q$, 2008, array[$q$Drama$q$, $q$Romance$q$], $txt$A young man from the Mumbai slums nears the top prize on a televised quiz show, and is accused of cheating, forcing him to relive the life story that gave him each answer.$txt$, $q$https://covers.openlibrary.org/b/id/474569-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/5leCCi7ZF0CawAfM5Qo2ECKPprc.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- Watchmen
  (
    $q$dc97b2e1-2fb6-4a07-8a91-6b99364d2024$q$::uuid,
    $q$Ending$q$,
    $txt$Ozymandias's whole scheme to unite the world against a fake threat uses a completely different device in each version.$txt$,
    $txt$In the graphic novel, Ozymandias teleports a massive, genetically engineered psychic creature into New York City; its death unleashes a psychic shockwave that kills half the city and convinces the world an alien invasion is imminent, uniting humanity against a common enemy.

The film drops the creature entirely. Instead, Ozymandias frames Dr. Manhattan for simultaneous catastrophic explosions in major cities around the world, making it look like Manhattan himself turned on humanity. The underlying goal, and the fact that Ozymandias is behind it, stays the same -- but the actual mechanism is a wholesale replacement, and it's one of the most debated changes in any comic-to-film adaptation.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$dc97b2e1-2fb6-4a07-8a91-6b99364d2024$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The graphic novel's comic-within-a-comic and extensive in-universe backmatter are mostly cut from the theatrical film.$txt$,
    $txt$Moore and Gibbons' book is interspersed with "Tales of the Black Freighter," a pirate comic a minor character reads throughout that thematically mirrors the main plot, along with excerpts from fictional memoirs, psychiatric case files, and magazine articles that flesh out the world between chapters. The theatrical cut of the film drops almost all of this; the Black Freighter story was instead produced as a separate animated direct-to-video feature, and both were only woven together in the later, much longer "Ultimate Cut" of the film.$txt$,
    false,
    $q$approved$q$
  ),

  -- V for Vendetta
  (
    $q$5b778306-a682-4956-a720-bd875dd1eac6$q$::uuid,
    $q$Setting$q$,
    $txt$The fascist regime rises to power after a nuclear war in the book, but a virus and terrorism in the film.$txt$,
    $txt$Moore's original comic, written as a reaction to Thatcher-era Britain, imagines Norsefire's fascist government taking power amid the chaos following a limited nuclear war that devastated much of the rest of the world. The film updates this backstory for a post-9/11 audience: the regime instead rises after a wave of terrorist attacks and a deadly engineered virus outbreak, shifting the story's political target from Cold War-era nuclear anxiety to 2000s war-on-terror politics.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$5b778306-a682-4956-a720-bd875dd1eac6$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$V's anarchist ideology is more morally ambiguous in the book than in the film.$txt$,
    $txt$The graphic novel is more critical and uncertain about V himself, deliberately leaving readers unsure whether his anarchist vision is actually a better alternative to fascism or merely a different kind of extremism. The film frames V in a more straightforwardly heroic light as a freedom fighter, softening much of the moral ambiguity Moore built into the character.$txt$,
    false,
    $q$approved$q$
  ),

  -- Jumanji
  (
    $q$69e3df2b-af43-470d-86ed-72473ac72c5f$q$::uuid,
    $q$Plot$q$,
    $txt$The film invents an entire decades-spanning backstory that doesn't exist in the picture book.$txt$,
    $txt$Van Allsburg's original is a short picture book about two siblings, Judy and Peter, who play a mysterious jungle board game one afternoon, with fantastical jungle hazards erupting into their house until they finish it. The film invents Alan Parrish, a boy who gets sucked into the game itself in 1969 and stays trapped there for 26 years, returning as an adult in 1995 when new kids restart the game -- an entire time-trapped-protagonist plot with no basis in the book at all.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$69e3df2b-af43-470d-86ed-72473ac72c5f$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's jungle set pieces are far bigger and more numerous than anything in the book.$txt$,
    $txt$The picture book describes a handful of jungle dangers in spare, understated prose and illustrations. The film massively expands this into large action set pieces -- a stampede of rhinos and elephants through the house, giant mosquitoes, a big-game hunter chasing Alan through town, chaos in a grocery store -- most of which are the film's own invention or major expansions of brief book moments.$txt$,
    false,
    $q$approved$q$
  ),

  -- How to Train Your Dragon
  (
    $q$05c8e616-4123-43bb-8f42-d5f71023065b$q$::uuid,
    $q$Plot$q$,
    $txt$Vikings already live alongside domesticated dragons in the book; the film makes them a dangerous enemy at war with humans instead.$txt$,
    $txt$In Cowell's novels, every Viking is expected to catch and train a (small, badly behaved) dragon as a rite of passage -- dragons are already a normal, if annoying, part of daily life. The film completely reworks this premise: dragons are established as fearsome predators that regularly raid the village, with humans and dragons at open war, a fundamental change from the book's "already domesticated nuisance" setup.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$05c8e616-4123-43bb-8f42-d5f71023065b$q$::uuid,
    $q$Character$q$,
    $txt$Toothless is a weak, common dragon in the books, but one of the rarest and most powerful in the film.$txt$,
    $txt$Book-Toothless is a small, unimpressive "Common or Garden" dragon who barely knows any tricks and is something of an embarrassment to Hiccup. The film's Toothless is a Night Fury, one of the most dangerous and mysterious dragon species in its world, who loses part of his tail and bonds with Hiccup as they learn to fly together -- the two versions share a name and little else.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Giver
  (
    $q$2013172d-5da1-42a2-98c6-419938052e64$q$::uuid,
    $q$Character$q$,
    $txt$Jonas is twelve in the book but played as a teenager in the film.$txt$,
    $txt$Lowry's novel centers on the community's ceremony assigning roles to children at exactly age twelve, and Jonas is that age throughout. The film ages him up to a late-teen actor, largely to support a more prominent romantic subplot and fit expectations for a YA film at the time.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2013172d-5da1-42a2-98c6-419938052e64$q$::uuid,
    $q$Added Content$q$,
    $txt$The book's color metaphor is only described in prose; the film makes it a literal visual device.$txt$,
    $txt$Lowry's novel conveys Jonas's growing ability to perceive color, as he receives memories, entirely through description, since the world is understood to be colorless for everyone else. The film makes this literal: scenes in the "sameness" community are shot in desaturated black-and-white, gradually introducing color as Jonas's abilities grow -- a direct but necessarily more explicit visual translation of the book's central metaphor.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2013172d-5da1-42a2-98c6-419938052e64$q$::uuid,
    $q$Ending$q$,
    $txt$The novel's famously ambiguous ending is replaced with a clear, concrete resolution in the film.$txt$,
    $txt$The book ends with Jonas and Gabriel reaching a snowy hill on a sled and hearing music, deliberately leaving it unclear whether they've reached a real "Elsewhere" or are dying in the cold -- one of the most discussed ambiguous endings in YA fiction. The film removes that ambiguity entirely, showing Jonas actually reach a real community beyond the border and the released memories flooding back to everyone he left behind, for a clear, triumphant conclusion.$txt$,
    true,
    $q$approved$q$
  ),

  -- Ready Player One
  (
    $q$69ca6b9d-c421-4c4c-84cb-ea133a355875$q$::uuid,
    $q$Added Content$q$,
    $txt$The second key's challenge is an entirely different pop-culture reference in the film than in the book.$txt$,
    $txt$Cline's novel builds its second challenge around recreating the Dungeons & Dragons module Tomb of Horrors from memory. The film replaces this with an extended sequence set inside a recreation of the Overlook Hotel from Stanley Kubrick's The Shining -- a completely different reference with no equivalent in the book.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$69ca6b9d-c421-4c4c-84cb-ea133a355875$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The film swaps much of the book's niche 1980s references for broader, more recognizable pop culture.$txt$,
    $txt$The novel leans heavily on Cline's personal love of specific 1980s touchstones -- WarGames, Family Ties, tabletop RPGs, and Rush's music and lyrics play major plot roles. Licensing some of these (Rush especially) wasn't feasible for the film, which instead brings in more broadly recognizable, visually spectacular franchises like Batman, King Kong, and an expanded role for the Iron Giant.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$69ca6b9d-c421-4c4c-84cb-ea133a355875$q$::uuid,
    $q$Character$q$,
    $txt$Art3mis's self-consciousness about a real-world facial birthmark is largely dropped from the film.$txt$,
    $txt$In the book, Samantha (Art3mis) is deeply insecure about a birthmark covering part of her face, and it's a real source of tension in her relationship with Wade. The film's version of the character doesn't carry this same insecurity plotline.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Girl with the Dragon Tattoo
  (
    $q$8d0b6a00-c85e-4805-a471-6d5b2b2c0db1$q$::uuid,
    $q$Added Content$q$,
    $txt$The book's original title translates to "Men Who Hate Women," a much more direct thematic title than the English rebrand.$txt$,
    $txt$Larsson's original Swedish title, Man som hatar kvinnor, translates to "Men Who Hate Women," foregrounding the novel's focus on violence against women. English-language publishers retitled it The Girl with the Dragon Tattoo, shifting the emphasis toward Lisbeth Salander specifically -- a title choice both Fincher's film and the earlier Swedish film adopted.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$8d0b6a00-c85e-4805-a471-6d5b2b2c0db1$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The Wennerstrom financial-fraud subplot bookending the main mystery is considerably trimmed in the film.$txt$,
    $txt$The novel gives a fuller account of Blomkvist's parallel storyline about exposing a corrupt businessman, including more detail on Lisbeth's own role in ultimately exacting revenge on him through hacking his finances. The film keeps this as a frame but compresses it significantly to stay focused on the central Vanger family mystery.$txt$,
    false,
    $q$approved$q$
  ),

  -- Q & A (Slumdog Millionaire)
  (
    $q$e024a354-8f46-4045-bede-2f9e8805d1fa$q$::uuid,
    $q$Character$q$,
    $txt$The protagonist's name and the quiz show itself are both changed for the film.$txt$,
    $txt$Swarup's novel follows Ram Mohammad Thomas on a fictional Indian program called "Who Will Win a Billion?" The film renames him Jamal Malik and swaps in the real, internationally licensed "Who Wants to Be a Millionaire?" format.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$e024a354-8f46-4045-bede-2f9e8805d1fa$q$::uuid,
    $q$Plot$q$,
    $txt$The book's chapters are largely unconnected vignettes; the film unifies them into one continuous love story.$txt$,
    $txt$Each chapter of Swarup's novel centers on a single quiz question and a self-contained story from Ram's chaotic, picaresque life that happens to explain how he knew the answer -- the episodes are largely independent of each other rather than building one continuous plot. The film reworks this into a single unified narrative organized around Jamal's lifelong devotion to one love interest, Latika, a throughline that isn't how the book's episodic structure works at all.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
