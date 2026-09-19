insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis)
values
  ($q$71377a8e-aef8-454d-b6cf-00b6dd29dc0f$q$, $q$No Country for Old Men$q$, $q$Cormac McCarthy$q$, 2005, $q$No Country for Old Men$q$, $q$Joel and Ethan Coen$q$, 2007, array[$q$Crime$q$, $q$Thriller$q$], $txt$A welder stumbles across the aftermath of a drug deal gone wrong in the Texas desert and takes off with a case full of cash, unaware that a relentless, near-unstoppable killer is already hunting him down.$txt$),
  ($q$e1afaef1-4df1-44d4-814f-8e6dbad0967e$q$, $q$To Kill a Mockingbird$q$, $q$Harper Lee$q$, 1960, $q$To Kill a Mockingbird$q$, $q$Robert Mulligan$q$, 1962, array[$q$Drama$q$], $txt$In a small Depression-era Alabama town, a widowed lawyer defends a Black man falsely accused of raping a white woman, seen through the eyes of his young daughter as she learns hard lessons about courage and prejudice.$txt$),
  ($q$e2358240-eabd-412e-bea8-7bc14113b612$q$, $q$The Silence of the Lambs$q$, $q$Thomas Harris$q$, 1988, $q$The Silence of the Lambs$q$, $q$Jonathan Demme$q$, 1991, array[$q$Thriller$q$, $q$Horror$q$], $txt$A young FBI trainee is sent to interview a brilliant, imprisoned cannibalistic psychiatrist for insight into a serial killer at large, only to find herself drawn into a dangerous exchange of information and manipulation.$txt$),
  ($q$d5a61dd7-d95b-4286-b5cf-74a48b7f0f70$q$, $q$Life of Pi$q$, $q$Yann Martel$q$, 2001, $q$Life of Pi$q$, $q$Ang Lee$q$, 2012, array[$q$Adventure$q$, $q$Fantasy$q$, $q$Drama$q$], $txt$The sole human survivor of a shipwreck spends over two hundred days adrift on a lifeboat in the Pacific Ocean, sharing the small vessel with an adult Bengal tiger.$txt$),
  ($q$252997e7-b3ed-4971-90df-33d44f46b686$q$, $q$The Devil Wears Prada$q$, $q$Lauren Weisberger$q$, 2003, $q$The Devil Wears Prada$q$, $q$David Frankel$q$, 2006, array[$q$Comedy$q$, $q$Drama$q$], $txt$A recent college graduate takes a job as junior assistant to the notoriously demanding editor of a top fashion magazine, and must decide how much of herself she is willing to sacrifice to survive the job.$txt$),
  ($q$93de8109-1811-4d68-8b2b-f860929b6b66$q$, $q$Coraline$q$, $q$Neil Gaiman$q$, 2002, $q$Coraline$q$, $q$Henry Selick$q$, 2009, array[$q$Fantasy$q$, $q$Horror$q$, $q$Family$q$], $txt$A bored young girl exploring her new home discovers a hidden door to an alternate version of her life where her Other Mother seems to offer everything she has ever wanted, for a price far too high.$txt$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- No Country for Old Men
  (
    $q$71377a8e-aef8-454d-b6cf-00b6dd29dc0f$q$::uuid,
    $q$Character$q$,
    $txt$Sheriff Bell's philosophical narration is trimmed considerably for the film.$txt$,
    $txt$The film is famous for lifting much of its dialogue nearly verbatim from McCarthy's novel, but it trims down Sheriff Bell's interior monologues about the changing nature of violence in America, which run much longer and more philosophically on the page.

Tommy Lee Jones's performance carries a lot of that same weariness and reflection, but the sheer volume of Bell's musing about how the world has changed is considerably reduced from the source material.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$71377a8e-aef8-454d-b6cf-00b6dd29dc0f$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel includes first-person chapters from Bell that have no equivalent in the film.$txt$,
    $txt$McCarthy's book intersperses short chapters narrated directly in Bell's own first-person voice between the main third-person narrative, giving readers more direct access to his private reflections on aging, violence, and faith.

The film has no equivalent narration device. Bell's inner life comes through only via dialogue and Jones's performance, without ever cutting to his literal internal monologue the way the book does.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$71377a8e-aef8-454d-b6cf-00b6dd29dc0f$q$::uuid,
    $q$Ending$q$,
    $txt$The aftermath of Moss's death is handled at different lengths in each version.$txt$,
    $txt$Both versions have Moss killed off-page and off-screen, with Chigurh surviving a serious car accident afterward and simply walking away. Neither version shows a conventional confrontation or resolution between the two men.

The novel spends more time afterward on Bell's retirement and his quiet sense of defeat at a world he no longer feels he understands. The film compresses this into its now-famous, deliberately unresolved final scene of Bell recounting a dream to his wife over breakfast.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$71377a8e-aef8-454d-b6cf-00b6dd29dc0f$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel reads as more overtly meditative, while the film leans harder into suspense.$txt$,
    $txt$McCarthy's prose is explicitly philosophical about fate, aging, and the nature of evil, with long passages of reflection woven throughout the plot.

The Coen brothers keep that philosophical undercurrent but wrap it inside a much more suspense-driven thriller structure, especially in the extended, largely wordless cat-and-mouse sequences between Moss and Chigurh that the film builds out as pure tension.$txt$,
    false,
    $q$approved$q$
  ),

  -- To Kill a Mockingbird
  (
    $q$e1afaef1-4df1-44d4-814f-8e6dbad0967e$q$::uuid,
    $q$Plot$q$,
    $txt$The novel spans several years of Scout's childhood; the film compresses this into about one year.$txt$,
    $txt$Harper Lee's novel covers roughly three years, including many episodes about the Finch children's friendship with Dill and their fascination with reclusive neighbor Boo Radley, spread across multiple summers.

The film narrows its focus tightly around the trial of Tom Robinson, compressing the timeline considerably and trimming most of the material that isn't directly connected to that central plot.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$e1afaef1-4df1-44d4-814f-8e6dbad0967e$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Several secondary storylines from the book do not appear in the film.$txt$,
    $txt$The novel includes material about Scout's difficulties adjusting to school, as well as an extended visit from Aunt Alexandra and her attempts to reshape how the Finch household is run.

The film trims or removes most of this, keeping its runtime focused on Atticus, the trial, and the children's growing understanding of Boo Radley.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$e1afaef1-4df1-44d4-814f-8e6dbad0967e$q$::uuid,
    $q$Character$q$,
    $txt$Calpurnia has a larger role in the book than in the film.$txt$,
    $txt$The novel spends real time on Calpurnia, the Finch family's Black housekeeper, including a scene where she brings the children to her own church and they see a side of her life otherwise invisible to them.

The film reduces her role considerably, keeping her present in the household but cutting most of the material that develops her as her own character outside the Finch family's view of her.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$e1afaef1-4df1-44d4-814f-8e6dbad0967e$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The book's reflective adult narration is necessarily lost in translation to film.$txt$,
    $txt$The novel is narrated in first person by an adult Scout looking back on her own childhood, which gives the prose a wry, reflective quality layered over the events as they happen.

The film, told visually and in the moment, loses that layer of retrospective adult narration, even though young Scout remains the story's clear emotional center throughout.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Silence of the Lambs
  (
    $q$e2358240-eabd-412e-bea8-7bc14113b612$q$::uuid,
    $q$Character$q$,
    $txt$Clarice's backstory involving the screaming lambs is trimmed for the film.$txt$,
    $txt$The novel gives more detail on Clarice Starling's childhood, particularly the traumatic memory of hearing lambs being slaughtered on her uncle's farm -- the memory that gives the book and film their shared title.

The film keeps this core memory, revealed in her conversations with Lecter, but trims much of the surrounding detail and context that the novel provides about her upbringing.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$e2358240-eabd-412e-bea8-7bc14113b612$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book includes more FBI procedural detail around the hunt for Buffalo Bill.$txt$,
    $txt$The novel spends more time on Senator Ruth Martin and the broader FBI investigation and political pressure surrounding the search for the killer known as Buffalo Bill.

The film streamlines this considerably, keeping the political pressure as a backdrop but focusing its runtime much more tightly on the scenes between Clarice and Lecter.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$e2358240-eabd-412e-bea8-7bc14113b612$q$::uuid,
    $q$Character$q$,
    $txt$Lecter's backstory stays more mysterious in this book and film than in later material.$txt$,
    $txt$Author Thomas Harris expanded Hannibal Lecter's personal history much further in his later novel Hannibal, but the 1988 book this film adapts keeps him deliberately mysterious.

The film preserves that same ambiguity, ending with Lecter free and blending anonymously into a crowd, without revealing more about his past than the source novel does at this point in the story.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$e2358240-eabd-412e-bea8-7bc14113b612$q$::uuid,
    $q$Added Content$q$,
    $txt$Some of Lecter's most famous line deliveries were actorly choices layered onto the dialogue.$txt$,
    $txt$Several of the film's most quoted moments come from specific vocal and physical choices Anthony Hopkins made in performance -- his controlled stillness, his hissing delivery -- rather than being described that way on the page.

The dialogue itself is often close to the novel, but the particular menace of how it's delivered on screen is very much a product of the film adaptation rather than something Harris specified in the text.$txt$,
    false,
    $q$approved$q$
  ),

  -- Life of Pi
  (
    $q$d5a61dd7-d95b-4286-b5cf-74a48b7f0f70$q$::uuid,
    $q$Ending$q$,
    $txt$Both versions offer an alternate, all-human version of the shipwreck story.$txt$,
    $txt$In both the novel and the film, Pi eventually tells shipwreck investigators a second, much darker version of events in which the animals are implied to be symbolic stand-ins for people.

The novel lingers longer on the horror of that alternate version and its implications. The film delivers it more briefly before pulling back to the framing question of which story the audience prefers to believe.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$d5a61dd7-d95b-4286-b5cf-74a48b7f0f70$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel spends more time on Pi's early life and his practice of three religions at once.$txt$,
    $txt$The book includes a longer middle section detailing Pi's childhood, his family's zoo in Pondicherry, and his simultaneous exploration of Hinduism, Christianity, and Islam, explored in real theological depth.

The film keeps Pi's religious curiosity as a character trait but trims much of this material to move more quickly toward the shipwreck and the time at sea.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$d5a61dd7-d95b-4286-b5cf-74a48b7f0f70$q$::uuid,
    $q$Setting$q$,
    $txt$The floating carnivorous island is rendered very differently in tone between versions.$txt$,
    $txt$The novel describes an eerie floating island of carnivorous algae that Pi and the tiger discover partway through their journey in fairly matter-of-fact, almost naturalistic prose.

The film keeps this sequence but renders it in a much more overtly dreamlike and visually stylized way, leaning into the sequence's strangeness rather than presenting it plainly.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$d5a61dd7-d95b-4286-b5cf-74a48b7f0f70$q$::uuid,
    $q$Added Content$q$,
    $txt$The film adds a framing device of adult Pi narrating his story to a writer in Canada.$txt$,
    $txt$The film bookends its story with scenes of an adult Pi telling his tale years later to a writer researching him, a structure used to frame the whole film.

The novel handles its framing differently, through an author's note rather than an on-screen interview device, giving the film a more overt narrative frame than the book's own version of that conceit.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Devil Wears Prada
  (
    $q$252997e7-b3ed-4971-90df-33d44f46b686$q$::uuid,
    $q$Character$q$,
    $txt$Film Miranda Priestly is given more sympathy than book Miranda.$txt$,
    $txt$The novel's editor character is portrayed as almost entirely unsympathetic and monstrous throughout, with little humanizing context offered for her behavior.

The film, largely through Meryl Streep's performance, adds moments of vulnerability, including a scene touching on her impending divorce, that recontextualize her demanding behavior in a more sympathetic light than the book allows.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$252997e7-b3ed-4971-90df-33d44f46b686$q$::uuid,
    $q$Ending$q$,
    $txt$The film softens the ending with a reconciliation gesture the book does not include.$txt$,
    $txt$In the book, Andy quits by dramatically walking out during a work trip to Paris and essentially cuts ties with Miranda and that world completely.

The film keeps the Paris walkout but adds a coda in which Miranda later gives Andy a strong reference and a small, knowing nod of respect -- a softer, more redemptive resolution than the novel offers.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$252997e7-b3ed-4971-90df-33d44f46b686$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Andy's personal relationships get more page time in the novel than screen time in the film.$txt$,
    $txt$The book includes a more fleshed-out subplot about Andy's boyfriend Alex and the strain the job puts on her friendships, developed across many more scenes than the film has room for.

The film trims most of this to keep its focus tightly on the workplace story and Andy's relationship with Miranda and the magazine.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$252997e7-b3ed-4971-90df-33d44f46b686$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The book is a sharper satire; the film is warmer toward the fashion industry.$txt$,
    $txt$Lauren Weisberger's novel is written as a pointed, more bitter satire drawing on her own real experience as an assistant at Vogue magazine.

The film softens that satire into something warmer and more mainstream, adding genuine appreciation for the fashion industry's creative side that the novel is considerably less interested in granting.$txt$,
    false,
    $q$approved$q$
  ),

  -- Coraline
  (
    $q$93de8109-1811-4d68-8b2b-f860929b6b66$q$::uuid,
    $q$Character$q$,
    $txt$The film adds an entirely new character, Wybie, who does not exist in the book.$txt$,
    $txt$The film introduces Wybie, a local boy who befriends Coraline and helps her investigate the Other world alongside her.

In Gaiman's novel, Coraline explores almost entirely on her own, with no equivalent companion character -- Wybie was created specifically for the film.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$93de8109-1811-4d68-8b2b-f860929b6b66$q$::uuid,
    $q$Added Content$q$,
    $txt$The Other World's set pieces are considerably expanded in the film.$txt$,
    $txt$The film builds out a much more elaborate garden sequence and an extended stage performance from the Other versions of neighbors Miss Spink and Miss Forcible.

These sequences are brief in the book by comparison, with the film using stop-motion animation to expand them into some of its most visually memorable set pieces.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$93de8109-1811-4d68-8b2b-f860929b6b66$q$::uuid,
    $q$Character$q$,
    $txt$The Other Mother's true monstrous form is more fully visualized in the film.$txt$,
    $txt$The book leaves the true nature and appearance of the Other Mother's monstrous form somewhat more to the reader's imagination.

The film gives her a more elaborate, spider-like true form that is fully designed and animated for the climax, making something implied in the text into something explicit and visible on screen.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$93de8109-1811-4d68-8b2b-f860929b6b66$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book spends more time on Coraline's relationship with her distracted real parents.$txt$,
    $txt$The novel gives more attention early on to Coraline's real parents and how distracted and unavailable they are before she discovers the door to the Other world.

The film trims some of this setup to move more quickly into the fantastical plot once the door is discovered.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries d
  where d.adaptation_id = v.adaptation_id and d.summary = v.summary
);
