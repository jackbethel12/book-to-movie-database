-- ============================================================================
-- Content batch: The Godfather, Forrest Gump, Fight Club, Shawshank Redemption
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis)
values
  ('6fae19ef-3f9c-4463-b678-0f1257247367', 'The Godfather', 'Mario Puzo', 1969, 'The Godfather', 'Francis Ford Coppola', 1972, array['Crime', 'Drama'], 'The patriarch of a powerful New York crime family transfers control of his empire to his reluctant youngest son, drawing him deep into the violent world he once tried to avoid.'),
  ('5e92c9c9-77ae-48cf-b36f-276e9f552857', 'Forrest Gump', 'Winston Groom', 1986, 'Forrest Gump', 'Robert Zemeckis', 1994, array['Drama', 'Comedy'], 'A slow-witted but kind-hearted man from Alabama recounts, in his own words, the improbable series of historical events and personal triumphs that make up his unlikely life.'),
  ('44a06be3-076a-46bd-afc5-4360f659187b', 'Fight Club', 'Chuck Palahniuk', 1996, 'Fight Club', 'David Fincher', 1999, array['Thriller', 'Drama'], 'An unnamed, insomniac office worker forms an underground bare-knuckle fighting club with a charismatic soap salesman, and the club spirals into something far more dangerous than either of them intended.'),
  ('8ba25157-3e7f-48c5-80f9-549d315873a2', 'Rita Hayworth and Shawshank Redemption', 'Stephen King', 1982, 'The Shawshank Redemption', 'Frank Darabont', 1994, array['Drama'], 'A banker wrongly convicted of murdering his wife forms an unlikely friendship with a fellow inmate over decades of incarceration, while quietly working toward something no one expects.')
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- The Godfather
  (
    '6fae19ef-3f9c-4463-b678-0f1257247367'::uuid,
    'Omitted Content',
    'Two major subplots from the novel are cut entirely from the film.',
    'The book devotes a substantial number of pages to Johnny Fontane, the family''s godson and a fading Hollywood singer, tracing his career troubles and personal life in far more depth than the film''s brief scenes about landing him a movie role.

Even more strikingly, the novel includes an extended, fairly graphic subplot involving Lucy Mancini (Sonny''s mistress, seen briefly at the wedding in the film) and a surgical procedure she undergoes years later tied to an affair with a doctor. It''s a significant chunk of the book''s back half and doesn''t appear in the film in any form.',
    false,
    'approved'
  ),
  (
    '6fae19ef-3f9c-4463-b678-0f1257247367'::uuid,
    'Timeline',
    'Vito Corleone''s backstory is almost entirely absent from this film.',
    'Puzo''s novel weaves in lengthy flashback chapters covering Vito''s childhood in Sicily, his family''s murder by a local Mafia boss, and his rise to power in New York as a young immigrant. It''s a major part of the book''s structure.

Coppola largely left this material out of the first film, saving it instead for The Godfather Part II, which dramatizes young Vito''s story (played by Robert De Niro) as a parallel timeline to Michael''s. Readers of the novel get that whole arc in one continuous narrative; film viewers only get it if they watch the sequel.',
    false,
    'approved'
  ),
  (
    '6fae19ef-3f9c-4463-b678-0f1257247367'::uuid,
    'Character',
    'Kay Adams has a much smaller role in the novel than in the film.',
    'In the book, Kay largely disappears from the story for long stretches once Michael goes into hiding in Sicily, and she isn''t given much interior life or narrative weight beyond being Michael''s girlfriend-turned-wife.

The film, especially through Diane Keaton''s performance, builds Kay into more of an emotional throughline — someone the audience experiences Michael''s moral descent through, culminating in the famous closing shot of the door closing on her. That framing device is largely a creation of the film adaptation.',
    false,
    'approved'
  ),
  (
    '6fae19ef-3f9c-4463-b678-0f1257247367'::uuid,
    'Theme/Tone',
    'The novel is pulpier and more explicit than the film''s restrained, operatic tone.',
    'Puzo''s prose spends considerable time on the sexual and romantic lives of side characters in a way that reads as much more lurid and melodramatic than Coppola''s adaptation. Entire chapters are devoted to material that would feel tonally out of place in the film.

Coppola''s film strips almost all of that out, favoring a slower, more restrained, and visually formal style that treats the Corleones'' story as something closer to classical tragedy. It''s a large part of why the film is remembered as prestigious and the book as a popular page-turner, despite sharing the same plot.',
    false,
    'approved'
  ),

  -- Forrest Gump
  (
    '5e92c9c9-77ae-48cf-b36f-276e9f552857'::uuid,
    'Plot',
    'The book sends Forrest on far more absurd adventures than the film keeps.',
    'Winston Groom''s novel is a much stranger, more satirical ride: Forrest becomes a professional wrestler, gets sent into space as an astronaut and crash-lands with a tribe on a Pacific island, and even plays chess against a supercomputer as part of a diplomatic mission.

The film drops nearly all of this in favor of a smaller, more grounded set of episodes — Vietnam, ping pong, running across the country — that fit its more sentimental, realistic tone. Almost every episode the film is famous for exists in some form in the book, but the book has quite a bit more that never made it to screen at all.',
    false,
    'approved'
  ),
  (
    '5e92c9c9-77ae-48cf-b36f-276e9f552857'::uuid,
    'Theme/Tone',
    'Book Forrest is sharper-tongued and the novel reads as a much more cynical satire.',
    'On the page, Forrest is more self-aware and given to blunt, often crude commentary — the novel functions as a satire of American culture and history filtered through his voice, with a much darker sense of humor than the film.

Tom Hanks'' film performance reshapes Forrest into a gentler, more purely earnest and naive figure, and the film overall trades satire for sincerity. It''s a case where the two versions have almost opposite comedic sensibilities despite following the same basic life story.',
    false,
    'approved'
  ),
  (
    '5e92c9c9-77ae-48cf-b36f-276e9f552857'::uuid,
    'Added Content',
    'Several of the film''s most iconic lines and images don''t exist in the book.',
    'The "life is like a box of chocolates" line, the "Run, Forrest, run!" chant from his childhood friends, and the moment his leg braces fly off as he runs for the first time are all inventions of the screenplay, not moments from Groom''s novel.

These additions became some of the most quoted and referenced parts of the film, to the point that many people assume they come directly from the book. The film also invents the feather-on-the-wind opening and closing visual motif, which has no equivalent in the source material.',
    false,
    'approved'
  ),
  (
    '5e92c9c9-77ae-48cf-b36f-276e9f552857'::uuid,
    'Ending',
    'The book and film resolve Forrest and Jenny''s relationship very differently.',
    'In the novel, Forrest and Jenny never marry, and their relationship ends on a much more ambiguous, less romantically resolved note than the film suggests.

The film gives the couple a clearer, more sentimental arc: they marry, and the story closes with Forrest raising their son and visiting Jenny''s grave, framing their relationship as the emotional center of the whole story in a way the book does not.',
    true,
    'approved'
  ),

  -- Fight Club
  (
    '44a06be3-076a-46bd-afc5-4360f659187b'::uuid,
    'Ending',
    'The book and movie endings diverge sharply after the narrator shoots himself.',
    'In Palahniuk''s novel, the narrator shoots himself in the head to try to kill Tyler and wakes up in a mental institution, believing he has died and gone to heaven — with hints from the staff that Project Mayhem is still active and spreading without him.

The film has the bullet pass through the narrator''s cheek instead, leaving him alive. He and Marla watch through a window as the buildings around them collapse, hand in hand, ending on a note that is bleaker in some ways (he caused mass destruction and is still complicit) but more conventionally hopeful in others (he survives and ends up with Marla).',
    true,
    'approved'
  ),
  (
    '44a06be3-076a-46bd-afc5-4360f659187b'::uuid,
    'Omitted Content',
    'Some of the novel''s more extreme material is toned down or cut for the film.',
    'The book includes an escalating series of increasingly extreme acts carried out under Tyler''s influence, including a scene involving the castration of a city official''s aide as an intimidation tactic — material considerably more graphic than what made it into the film.

The film keeps the broad shape of Project Mayhem''s escalation but trims or softens some of its most extreme specific acts, likely for both pacing and content reasons, while still keeping the overall sense of an organization spinning out of control.',
    false,
    'approved'
  ),
  (
    '44a06be3-076a-46bd-afc5-4360f659187b'::uuid,
    'Added Content',
    'The film''s subliminal Tyler cuts and direct-address narration are cinematic inventions.',
    'David Fincher''s film famously splices single frames of Tyler Durden into scenes that take place before the narrator consciously "meets" him, a visual trick rewarding repeat viewings that has no equivalent in a text-based novel.

The film also has the narrator break the fourth wall to explain concepts directly to the audience (freeze-frame asides, rewinding the "plot" to explain how he got here), a technique built specifically for the screen rather than adapted from a literary device in the book.',
    false,
    'approved'
  ),
  (
    '44a06be3-076a-46bd-afc5-4360f659187b'::uuid,
    'Character',
    'Tyler''s philosophical monologues are more extensive on the page.',
    'The novel gives Tyler considerably more room to expound on his anti-consumerist, anti-materialist philosophy, with longer and more numerous passages of him theorizing about masculinity, capitalism, and self-destruction.

The film, working under runtime constraints, condenses this into tighter, more quotable lines ("The things you own end up owning you," etc.) that hit the same beats more efficiently but represent a small fraction of the book''s full philosophical text.',
    false,
    'approved'
  ),

  -- Shawshank Redemption
  (
    '8ba25157-3e7f-48c5-80f9-549d315873a2'::uuid,
    'Character',
    'Red''s background is different in the book than in the film.',
    'In King''s novella, Red (the narrator) is described as a middle-aged Irish American man, and there''s a small joke in the text about his nickname coming from his red hair and Irish heritage rather than anything else.

The film cast Morgan Freeman in the role, which changes the character''s implied background entirely and necessarily drops the original joke about his nickname''s origin, since it no longer fits. It''s one of the more well-known casting changes in a beloved adaptation.',
    false,
    'approved'
  ),
  (
    '8ba25157-3e7f-48c5-80f9-549d315873a2'::uuid,
    'Omitted Content',
    'The novella spends more time on the warden''s corruption scheme and prison politics.',
    'King''s original text goes into more detail on how the warden''s money-laundering scheme works, and includes more prison politics and secondary inmates than the film has room for.

The film condenses this into a tighter, more focused narrative centered on Andy and Red''s friendship, trimming subplots and side characters so the story reads more cleanly on screen within a two-and-a-half-hour runtime.',
    false,
    'approved'
  ),
  (
    '8ba25157-3e7f-48c5-80f9-549d315873a2'::uuid,
    'Ending',
    'The novella''s ending is more ambiguous than the film''s.',
    'King''s story ends with Red, newly paroled, crossing into Mexico with the hope — not the certainty — of finding Andy. The text closes on that hope rather than a confirmed reunion.

The film adds a definitive, visually iconic reunion on a beach in Zihuatanejo, giving audiences a clear, emotionally resolved payoff that the more understated novella deliberately withholds.',
    true,
    'approved'
  ),
  (
    '8ba25157-3e7f-48c5-80f9-549d315873a2'::uuid,
    'Setting',
    'The story is set in Maine, but the film was shot at a real Ohio prison.',
    'Like most Stephen King work, the novella is set in his native Maine, at the fictional Shawshank State Prison.

The film keeps that setting on paper but was largely filmed at the real, decommissioned Ohio State Reformatory in Mansfield, Ohio. Its imposing Gothic architecture gives the film a distinct visual identity — grander and more castle-like than a typical mid-century American prison — that isn''t something King''s prose specifically describes.',
    false,
    'approved'
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries d
  where d.adaptation_id = v.adaptation_id and d.summary = v.summary
);
