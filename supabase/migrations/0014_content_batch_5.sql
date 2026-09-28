-- ============================================================================
-- Content batch 5: American Psycho, The Martian, World War Z, The Exorcist,
-- Do Androids Dream of Electric Sheep? (Blade Runner), Stardust
-- ============================================================================
-- Same format as previous content batches: dollar quoting throughout
-- ($q$...$q$ for short fields, $txt$...$txt$ for longer prose) so apostrophes
-- never need manual escaping. Poster/cover URLs were looked up via TMDB and
-- Open Library and confirmed to resolve before being included here.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$9e550443-f434-46b4-ad6f-4a7d86affa3d$q$, $q$American Psycho$q$, $q$Bret Easton Ellis$q$, 1991, $q$American Psycho$q$, $q$Mary Harron$q$, 2000, array[$q$Thriller$q$, $q$Horror$q$], $txt$A wealthy, vain Manhattan investment banker conceals a growing appetite for violence behind a flawless facade of surface-level status symbols, as his grip on reality grows increasingly uncertain.$txt$, $q$https://covers.openlibrary.org/b/id/8401686-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/9uGHEgsiUXjCNq8wdq4r49YL8A1.jpg$q$),
  ($q$7635d324-c5f5-49d2-ba63-dbcd0b23bcf4$q$, $q$The Martian$q$, $q$Andy Weir$q$, 2011, $q$The Martian$q$, $q$Ridley Scott$q$, 2015, array[$q$Science Fiction$q$, $q$Adventure$q$], $txt$After a dust storm forces his crew to evacuate Mars without him, an astronaut presumed dead must use his engineering ingenuity to survive alone on the planet long enough for a rescue that could take years.$txt$, $q$https://covers.openlibrary.org/b/id/11447888-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/5BHuvQ6p9kfc091Z8RiFNhCwL4b.jpg$q$),
  ($q$393d8a2c-057d-4f23-8d3d-85dfe21d1ae9$q$, $q$World War Z$q$, $q$Max Brooks$q$, 2006, $q$World War Z$q$, $q$Marc Forster$q$, 2013, array[$q$Horror$q$, $q$Thriller$q$], $txt$As a global pandemic turns the infected into rampaging hordes, a former United Nations investigator races around the world hunting for the origin of the outbreak, and a way to stop it.$txt$, $q$https://covers.openlibrary.org/b/id/168106-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/aCnVdvExw6UWSeQfr0tUH3jr4qG.jpg$q$),
  ($q$acb2ff1e-df80-4d17-a38b-cbcee2c3e2a4$q$, $q$The Exorcist$q$, $q$William Peter Blatty$q$, 1971, $q$The Exorcist$q$, $q$William Friedkin$q$, 1973, array[$q$Horror$q$], $txt$When a twelve-year-old girl begins exhibiting violent, inexplicable behavior, her actress mother turns to two priests for an exorcism that will test their faith as much as it tests the demon inside her daughter.$txt$, $q$https://covers.openlibrary.org/b/id/12715730-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/5x0CeVHJI8tcDx8tUUwYHQSNILq.jpg$q$),
  ($q$73ef4191-9d6e-4d09-b532-75f3316f43d7$q$, $q$Do Androids Dream of Electric Sheep?$q$, $q$Philip K. Dick$q$, 1968, $q$Blade Runner$q$, $q$Ridley Scott$q$, 1982, array[$q$Science Fiction$q$, $q$Thriller$q$], $txt$In a decaying, near-future city, a world-weary bounty hunter is tasked with tracking down and retiring a group of escaped bioengineered androids passing as human, a job that forces him to question what separates them from him.$txt$, $q$https://covers.openlibrary.org/b/id/207515-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/63N9uy8nd9j7Eog2axPQ8lbr3Wj.jpg$q$),
  ($q$a6800256-1e62-4d88-b839-196e3fb10648$q$, $q$Stardust$q$, $q$Neil Gaiman$q$, 1999, $q$Stardust$q$, $q$Matthew Vaughn$q$, 2007, array[$q$Fantasy$q$, $q$Adventure$q$, $q$Romance$q$], $txt$To win the heart of the girl he loves, a young man from an English village ventures into the magical land beyond the wall to retrieve a fallen star, only to discover the star is a living woman with her own ideas, and that they are both being hunted.$txt$, $q$https://covers.openlibrary.org/b/id/8216379-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/le1gPiqeWrCj5FkjBtcF9clFmdX.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- American Psycho
  (
    $q$9e550443-f434-46b4-ad6f-4a7d86affa3d$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's most notorious murder sequences are far more graphic and prolonged than anything shown in the film.$txt$,
    $txt$Ellis's novel devotes extended, clinically detailed passages to Bateman's violence -- pages at a time, written in the same flat, brand-obsessed prose he uses for describing suits and restaurants. It's the most controversial aspect of the book, and much of it was deliberately excessive to make a point about desensitization.

Mary Harron's film keeps the violence but trims it drastically, often cutting away or staying just off-frame (the chainsaw scene, for instance, is far shorter and less explicit on screen than on the page). The result is a film that reads as satirical and darkly comic where the book can feel genuinely nauseating -- a very deliberate tonal softening.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$9e550443-f434-46b4-ad6f-4a7d86affa3d$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Almost all of Bateman's lengthy pop-music reviews are cut from the film.$txt$,
    $txt$The novel includes three entire chapters where Bateman, mid-narrative, stops to deliver an extended, oddly sincere critical essay on the discographies of Huey Lewis and the News, Genesis, and Whitney Houston. They read as bizarre non sequiturs dropped into an otherwise violent story, and are part of what critics point to as evidence of Bateman's hollow, brand-driven inner life.

The film reduces this to a single scene where Bateman monologues about Huey Lewis and the News right before killing Paul Allen with an axe, folding the joke into the plot instead of pausing the story for it.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$9e550443-f434-46b4-ad6f-4a7d86affa3d$q$::uuid,
    $q$Ending$q$,
    $txt$Both versions end ambiguously, but the book leaves even more unresolved.$txt$,
    $txt$In both the novel and the film, Bateman's confession to his lawyer goes nowhere -- the lawyer laughs it off, insists he had dinner with the supposedly murdered Paul Allen days earlier, and the world simply moves on as though nothing happened. Neither version confirms whether any of the murders were real or were all in Bateman's head.

The novel pushes the disorientation further, though: its closing pages dissolve into repetitive, dissociative narration and end mid-thought on the line $q$this is not an exit,$q$ offering no closure at all. The film's ending, while still ambiguous, is comparatively more grounded and conclusive in tone, letting Bateman deliver a closing voiceover that at least sounds like a person trying to make sense of what just happened.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$9e550443-f434-46b4-ad6f-4a7d86affa3d$q$::uuid,
    $q$Character$q$,
    $txt$Jean, Bateman's secretary, gets a suspense beat invented for the film.$txt$,
    $txt$In the movie, there's a tense scene where Bateman appears to seriously consider killing Jean in his apartment, sizing her up while she's distracted, before ultimately stopping himself -- one of the film's few moments that plays almost sympathetically toward Bateman. That specific scene, and the near-miss tension it creates, isn't in the novel in the same form; Jean is a much more minor, background presence in the book.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Martian
  (
    $q$7635d324-c5f5-49d2-ba63-dbcd0b23bcf4$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book is far denser with the actual engineering and math behind Watney's survival.$txt$,
    $txt$Andy Weir's novel is written largely as Watney's log entries, and a huge portion of them are step-by-step technical problem-solving: the exact chemistry of burning hydrazine to make water, the precise calculations for stretching food to survive until the next mission, and detailed descriptions of modifying the rover for a multi-week overland trip.

The film keeps the broad strokes of each problem but compresses the actual math and mechanics into quick montages and simplified dialogue, since most of it wouldn't translate to a visual, feature-length format. Fans of the book's hard-sci-fi rigor tend to see this as the single biggest change, even though the film keeps the plot beats largely intact.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$7635d324-c5f5-49d2-ba63-dbcd0b23bcf4$q$::uuid,
    $q$Ending$q$,
    $txt$Watney's final rescue is simplified in the film's version of events.$txt$,
    $txt$In the book, Watney's escape from Mars orbit and eventual retrieval by the Hermes crew is described with a lot of technical detail about trajectory, fuel, and the improvised puncture-and-thrust method he uses to close the distance to Commander Lewis during the spacewalk.

The film keeps the same basic idea -- Watney punctures his glove to use the escaping air as a makeshift thruster -- but streamlines and heightens it into a more purely cinematic, Iron-Man-esque moment, cutting most of the underlying technical reasoning the book walks through.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$7635d324-c5f5-49d2-ba63-dbcd0b23bcf4$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Several NASA and JPL side characters have smaller roles or are cut entirely.$txt$,
    $txt$The novel spends real time on the personal lives and internal politics of the ground crew back on Earth -- their doubts, disagreements, and individual arcs as they scramble to bring Watney home. The film keeps the key players (Vincent Kapoor, Mindy Park, Teddy Sanders) but trims most of that personal material down to functional, plot-driving dialogue, since the film's focus stays much more tightly on Watney himself.$txt$,
    false,
    $q$approved$q$
  ),

  -- World War Z
  (
    $q$393d8a2c-057d-4f23-8d3d-85dfe21d1ae9$q$::uuid,
    $q$Plot$q$,
    $txt$The film invents an entirely new protagonist and story structure not present in the book at all.$txt$,
    $txt$Max Brooks's novel is written as an oral history -- a collection of first-person interview transcripts from survivors all over the world, recorded years after humanity has already won the war. There is no single main character; it's a mosaic of dozens of perspectives, from a Japanese otaku to a South African military strategist to an astronaut stuck on the ISS.

The film abandons that structure completely, inventing Gerry Lane (Brad Pitt), a former UN investigator, and following him in real time during the early days of the outbreak as he searches for the source of the virus and a possible cure. Gerry Lane does not exist in the book in any form -- he, and the entire race-against-time plot built around him, are the film's own invention.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$393d8a2c-057d-4f23-8d3d-85dfe21d1ae9$q$::uuid,
    $q$Character$q$,
    $txt$The zombies themselves behave completely differently in each version.$txt$,
    $txt$Brooks's book sticks to classic, Romero-style zombies: slow, shambling, and dangerous mainly in overwhelming numbers over a long war of attrition. The film's zombies are fast, frenzied, and swarm in huge writhing masses -- most famously piling on top of each other to form living pyramids that scale walls.

This is one of the most-discussed changes among fans of the book, since the zombies' slowness was central to Brooks's whole thesis about how a real pandemic-style war would actually unfold. The film opts for a faster, more immediately cinematic threat instead.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$393d8a2c-057d-4f23-8d3d-85dfe21d1ae9$q$::uuid,
    $q$Ending$q$,
    $txt$The way humanity actually survives the war is entirely different between the two versions.$txt$,
    $txt$In the book, there's no quick fix -- humanity wins through a brutal, multi-year ground war and a controversial strategy called the Redeker Plan, which involves deliberately sacrificing certain safe zones to lure zombies away and buy time to rebuild a functioning military and society elsewhere.

The film instead invents a scientific solution: Gerry discovers that injecting oneself with a deadly-but-survivable pathogen makes a person effectively invisible to the infected, since they only attack the healthy. This becomes the basis for a possible worldwide defense. This entire concept, and the WHO-facility sequence where Gerry figures it out, has no equivalent anywhere in the novel.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$393d8a2c-057d-4f23-8d3d-85dfe21d1ae9$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Nearly all of the book's most memorable individual accounts and characters are absent from the film.$txt$,
    $txt$Chapters built around characters like Paul Redeker (the reclusive strategist who designs the plan that saves humanity), a blind Japanese teenager surviving alone in the mountains, and a Russian regiment that survives by chilling reversion to Cold War-era doctrine are among the book's most-praised sections, and none of them appear in the film in any form.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Exorcist
  (
    $q$acb2ff1e-df80-4d17-a38b-cbcee2c3e2a4$q$::uuid,
    $q$Character$q$,
    $txt$Father Karras's backstory and guilt over his mother are much more developed in the novel.$txt$,
    $txt$Blatty's novel spends considerable time inside Karras's head, detailing his crisis of faith, his psychiatric training, and his guilt over placing his elderly mother in a public hospital where she died essentially alone and afraid.

The film, written by Blatty himself, keeps the core of this (the mother's death, and a hallucinatory vision of her near the film's end) but necessarily compresses years of interior struggle into a handful of scenes, since a film can't linger on internal monologue the way a novel can.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$acb2ff1e-df80-4d17-a38b-cbcee2c3e2a4$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Lieutenant Kinderman's murder investigation is a much larger, more detective-procedural thread in the book.$txt$,
    $txt$Kinderman, investigating director Burke Dennings's death outside Regan's window, appears in both versions, but the novel gives him significantly more page time -- his interviews, suspicions, and back-and-forth with Karras function almost as a parallel mystery plot running underneath the horror story. The film keeps Kinderman but reduces him to a smaller handful of scenes.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$acb2ff1e-df80-4d17-a38b-cbcee2c3e2a4$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Regan's spider-walk down the stairs, described in the novel, was filmed but cut from the original theatrical release.$txt$,
    $txt$The book includes a striking image of Regan, in a demonic state, contorting backward and walking spider-like down the staircase. William Friedkin actually filmed this scene for the movie, but it was cut from the 1973 theatrical release because the visible wire rig used to achieve the effect looked unconvincing on screen.

The scene was eventually restored, with the wires digitally removed, for the 2000 theatrical re-release subtitled "The Version You've Never Seen" -- meaning most people who saw the original film in theaters never saw a moment that had been in the book from the start.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$acb2ff1e-df80-4d17-a38b-cbcee2c3e2a4$q$::uuid,
    $q$Ending$q$,
    $txt$The novel's epilogue is longer and more explicitly reflective than the film's.$txt$,
    $txt$After Karras sacrifices himself by taking the demon into his own body and throwing himself down the stairs, the book follows with an extended conversation between Kinderman and Father Dyer about faith, sacrifice, and what happened, along with a coda noting that Regan has no memory of the possession but still reacts instinctively to the sight of a priest's collar. The film's ending is considerably shorter and more restrained, closing not long after Karras's death.$txt$,
    true,
    $q$approved$q$
  ),

  -- Do Androids Dream of Electric Sheep? (Blade Runner)
  (
    $q$73ef4191-9d6e-4d09-b532-75f3316f43d7$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Mercerism, the novel's central religious framework, does not appear in the film at all.$txt$,
    $txt$In Dick's novel, most surviving humans practice Mercerism: a communal quasi-religious experience accessed through a device called an empathy box, which links users into a shared vision of a man named Wilbur Mercer eternally climbing a hill while being stoned. It's the book's main vehicle for exploring empathy, suffering, and what separates humans from androids, and it's completely absent from the film, which drops the concept entirely in favor of a straighter noir detective story.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$73ef4191-9d6e-4d09-b532-75f3316f43d7$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's whole subplot about owning real versus electric animals is left out of the film.$txt$,
    $txt$After a devastating nuclear war, most real animals in the book's world are extinct or nearly so, and owning one alive is an enormous status symbol; the poor make do with convincing fakes, like Deckard's titular electric sheep, which he's ashamed of. Deckard spends much of the novel hoping to afford a real animal with his bounty money, eventually buying a goat -- which is then killed near the end of the book. None of this material, or its title-explaining premise, appears in the film in any form.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$73ef4191-9d6e-4d09-b532-75f3316f43d7$q$::uuid,
    $q$Character$q$,
    $txt$Deckard is married in the book, and his relationship with Rachael is far less romantic.$txt$,
    $txt$The novel gives Deckard a wife, Iran, and a domestic home life run partly through a mood-altering device called a Penfield mood organ. The film removes Iran entirely, leaving Deckard single throughout.

Rachael's role also shifts significantly: in the book she is used by the android-manufacturing corporation as a tactic, seducing bounty hunters (including Deckard) to compromise their resolve, and their relationship is morally murkier as a result. The film reframes Deckard and Rachael's relationship as a much more central, sincere romance rather than a manipulation.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$73ef4191-9d6e-4d09-b532-75f3316f43d7$q$::uuid,
    $q$Setting$q$,
    $txt$The setting moves from a post-nuclear-war San Francisco to a corporate, rain-soaked Los Angeles.$txt$,
    $txt$Dick's novel is set in a 1992 San Francisco left largely depopulated after a nuclear war (World War Terminus), with radioactive dust driving most people to off-world colonies. The film relocates the story to a 2019 Los Angeles reimagined as a dense, neon-lit, perpetually rainy megacity dominated by corporations -- a hugely influential vision for the cyberpunk genre, but a substantially different backdrop and backstory from the book's post-apocalyptic premise.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$73ef4191-9d6e-4d09-b532-75f3316f43d7$q$::uuid,
    $q$Added Content$q$,
    $txt$Roy Batty's famous "tears in rain" monologue was written for the film and has no direct equivalent in the book.$txt$,
    $txt$Roy's closing speech about the things he's seen -- and how they'll be lost "like tears in rain" -- is one of the most quoted moments in science-fiction film, largely improvised and refined on set by actor Rutger Hauer. The novel's version of Roy Batty's death is far more clinical and has no comparable moment of poetic reflection; the scene, and its themes about memory and mortality, is very much the film's own addition.$txt$,
    true,
    $q$approved$q$
  ),

  -- Stardust
  (
    $q$a6800256-1e62-4d88-b839-196e3fb10648$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is a quieter, more melancholic fairy tale; the film is a broader action-adventure.$txt$,
    $txt$Gaiman's book leans into an old-fashioned, slightly wistful Victorian fairy-tale register, closer in spirit to writers like Lord Dunsany than to a modern blockbuster. The film, while keeping the core romance and quest, adds far more swordfights, chases, and broad physical comedy to make it play as a crowd-pleasing adventure film.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$a6800256-1e62-4d88-b839-196e3fb10648$q$::uuid,
    $q$Added Content$q$,
    $txt$Captain Shakespeare's secret love of dresses is a much bigger, broader comedic subplot in the film.$txt$,
    $txt$In the film, Robert De Niro's Captain Shakespeare -- the gruff sky-pirate captain -- secretly enjoys wearing extravagant dresses and dancing, a running joke that gets a full comedic set piece once Tristran and Yvaine discover it. The book's version of the Captain is a much smaller, subtler presence with no equivalent expanded subplot; the whole bit is essentially the film's invention.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$a6800256-1e62-4d88-b839-196e3fb10648$q$::uuid,
    $q$Ending$q$,
    $txt$The book's ending is far more bittersweet than the film's.$txt$,
    $txt$Both versions end with Tristran and Yvaine together and Tristran ultimately ruling Stormhold. But the novel is explicit and unflinching about the difference in their lifespans: Yvaine is a star, essentially immortal, while Tristran is human and will eventually grow old and die, leaving her to continue on alone afterward -- a melancholy note very typical of Gaiman's writing.

The film softens this considerably, ending on a more purely triumphant, storybook note and largely sidestepping the mortality gap between the two characters that the book dwells on.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$a6800256-1e62-4d88-b839-196e3fb10648$q$::uuid,
    $q$Character$q$,
    $txt$The witch-queen Lamia has a much larger, more prominent role throughout the film.$txt$,
    $txt$Michelle Pfeiffer's Lamia gets significant added screen time in the film, including expanded scenes of her using dark magic to temporarily restore her youth and pursuing Yvaine directly across much of the story. In the book, the witch-queen is a more distant, less constantly present antagonist for large stretches of the narrative, with her pursuit of the star described rather than dramatized scene-by-scene.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
