-- ============================================================================
-- Content batch 12: The Shining, Jurassic Park, One Flew Over the Cuckoo's
-- Nest, Little Women, Atonement, Room, The Fault in Our Stars, The Hunger
-- Games (original)
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$62f0bee4-7930-4c7a-a7ba-c6abbf9222b2$q$, $q$The Shining$q$, $q$Stephen King$q$, 1977, $q$The Shining$q$, $q$Stanley Kubrick$q$, 1980, array[$q$Horror$q$], $txt$A recovering alcoholic takes a winter caretaker job at an isolated, sprawling hotel with his wife and psychic young son, unaware that the hotel's malevolent influence is slowly consuming his sanity.$txt$, $q$https://covers.openlibrary.org/b/id/12376585-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/uAR0AWqhQL1hQa69UDEbb2rE5Wx.jpg$q$),
  ($q$034ff2e0-cd52-41fb-9faf-a34550c0c9e8$q$, $q$Jurassic Park$q$, $q$Michael Crichton$q$, 1990, $q$Jurassic Park$q$, $q$Steven Spielberg$q$, 1993, array[$q$Science Fiction$q$, $q$Adventure$q$], $txt$A billionaire's plan to open a theme park of cloned dinosaurs unravels when the creatures escape containment, trapping a small group of visitors on the island with them.$txt$, $q$https://covers.openlibrary.org/b/id/12882940-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/d9mtMGQDLANKieb9PbD3yK7xxzo.jpg$q$),
  ($q$7dd5433c-e10c-4a55-993e-8f7c51c58510$q$, $q$One Flew Over the Cuckoo's Nest$q$, $q$Ken Kesey$q$, 1962, $q$One Flew Over the Cuckoo's Nest$q$, $q$Milos Forman$q$, 1975, array[$q$Drama$q$], $txt$A rebellious new patient at a repressive psychiatric hospital clashes with the tyrannical head nurse, inspiring his fellow patients to reclaim their sense of self.$txt$, $q$https://covers.openlibrary.org/b/id/9272688-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/kjWsMh72V6d8KRLV4EOoSJLT1H7.jpg$q$),
  ($q$d3d6461e-4c52-4c8a-b182-e3da4b7093b6$q$, $q$Little Women$q$, $q$Louisa May Alcott$q$, 1868, $q$Little Women$q$, $q$Greta Gerwig$q$, 2019, array[$q$Drama$q$, $q$Romance$q$], $txt$The four March sisters navigate love, ambition, and loss as they grow from girlhood to adulthood in Civil War-era New England.$txt$, $q$https://covers.openlibrary.org/b/id/15219538-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/yn5ihODtZ7ofn8pDYfxCmxh8AXI.jpg$q$),
  ($q$cd3dbf3c-fd74-41f7-9145-fd646cf6db75$q$, $q$Atonement$q$, $q$Ian McEwan$q$, 2001, $q$Atonement$q$, $q$Joe Wright$q$, 2007, array[$q$Drama$q$, $q$Romance$q$], $txt$A childhood lie told by a young girl with an overactive imagination shatters the lives of her older sister and a family friend, with consequences that echo across decades.$txt$, $q$https://covers.openlibrary.org/b/id/8381043-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/hMRIyBjPzxaSXWM06se3OcNjIQa.jpg$q$),
  ($q$f67e165f-5aaa-4c6f-84d4-97228b0cad28$q$, $q$Room$q$, $q$Emma Donoghue$q$, 2010, $q$Room$q$, $q$Lenny Abrahamson$q$, 2015, array[$q$Drama$q$], $txt$A young mother held captive in a single locked room for years raises her five-year-old son there, then must help him adjust to a vast and frightening world after their escape.$txt$, $q$https://covers.openlibrary.org/b/id/8364817-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/2hHDMeYyZjbGWn0BeNH1cTMxuM7.jpg$q$),
  ($q$0cdb8680-b6f4-4c16-988e-45c8acb7e5de$q$, $q$The Fault in Our Stars$q$, $q$John Green$q$, 2012, $q$The Fault in Our Stars$q$, $q$Josh Boone$q$, 2014, array[$q$Drama$q$, $q$Romance$q$, $q$Young Adult$q$], $txt$Two teenagers who meet in a cancer support group fall in love and travel to Amsterdam to track down the reclusive author of a novel that has shaped how they think about their own mortality.$txt$, $q$https://covers.openlibrary.org/b/id/7418786-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/kcVuktIlrn9SAN1uBmPDnocTQmF.jpg$q$),
  ($q$a0d3fa92-425f-4385-b1f9-b9cd2fa4ebf3$q$, $q$The Hunger Games$q$, $q$Suzanne Collins$q$, 2008, $q$The Hunger Games$q$, $q$Gary Ross$q$, 2012, array[$q$Science Fiction$q$, $q$Dystopian$q$, $q$Young Adult$q$], $txt$In a country where a totalitarian Capitol forces each district to send two children to fight to the death on live television, a girl volunteers to take her younger sister's place.$txt$, $q$https://covers.openlibrary.org/b/id/12646537-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/apa5G43Hha7kH7wJG0gkkHT7FA9.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- The Shining
  (
    $q$62f0bee4-7930-4c7a-a7ba-c6abbf9222b2$q$::uuid,
    $q$Ending$q$,
    $txt$The book ends with the Overlook's boiler exploding and destroying the hotel; the film ends with Jack freezing to death in a hedge maze.$txt$,
    $txt$King's novel climaxes with Jack failing to maintain the hotel's aging boiler, which explodes and burns the Overlook to the ground -- a literal and symbolic destruction of the evil place. Kubrick's film replaces this with an entirely invented hedge maze, where Jack chases Danny and then freezes to death, lost in the snow. The hotel itself is left standing in the film's final shot.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$62f0bee4-7930-4c7a-a7ba-c6abbf9222b2$q$::uuid,
    $q$Character$q$,
    $txt$Book-Jack is a fundamentally sympathetic man losing a genuine battle with alcoholism and his own temper; film-Jack reads as unstable from the start.$txt$,
    $txt$King, drawing on his own struggles with addiction, wrote Jack Torrance as a loving father who is slowly and tragically possessed by the hotel against his will, making his descent feel like a real loss. Kubrick's casting of Jack Nicholson, along with his direction, gives the character a simmering menace almost from his first scene, which King himself has said he felt undercut the book's tragedy -- he has been vocally critical of this interpretation over the years.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$62f0bee4-7930-4c7a-a7ba-c6abbf9222b2$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book's living topiary animals, which stalk the family across the hotel grounds, aren't in the film at all.$txt$,
    $txt$A recurring source of dread in King's novel is a set of hedge animals that appear to move and menace the characters when unobserved. Budget and technical constraints led Kubrick to drop this entirely, replacing the hedge animals with the now-iconic hedge maze instead.$txt$,
    false,
    $q$approved$q$
  ),

  -- Jurassic Park
  (
    $q$034ff2e0-cd52-41fb-9faf-a34550c0c9e8$q$::uuid,
    $q$Character$q$,
    $txt$John Hammond is a much harsher, more culpable figure in the book than the warm grandfather the film portrays.$txt$,
    $txt$Crichton's novel writes Hammond as a ruthless, self-deluded businessman who prioritizes profit over safety and shows little remorse even as people die -- and he does not survive the book. Spielberg's film softens him considerably into a well-meaning but naive old man who is genuinely shaken by the disaster, and he survives to the end.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$034ff2e0-cd52-41fb-9faf-a34550c0c9e8$q$::uuid,
    $q$Ending$q$,
    $txt$The novel ends with the Costa Rican air force bombing the island to destroy the dinosaurs; the film has no such airstrike.$txt$,
    $txt$Crichton's book closes with the government ordering an airstrike on Isla Nublar once the scale of the disaster becomes clear, a grim final measure to contain the escaped dinosaurs. The film ends more simply, with the surviving characters escaping by helicopter and no mention of the island being destroyed.$txt$,
    true,
    $q$approved$q$
  ),

  -- One Flew Over the Cuckoo's Nest
  (
    $q$7dd5433c-e10c-4a55-993e-8f7c51c58510$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is narrated entirely by Chief Bromden, whose paranoid, hallucinatory perspective shapes everything the reader sees; the film drops this narrator and shows events objectively.$txt$,
    $txt$Kesey's book is told in the first person by Chief Bromden, a patient who pretends to be deaf and mute, and much of its imagery -- including the recurring idea of "the Combine," a machine-like force controlling society -- comes filtered through his unreliable, medicated point of view. Forman's film abandons this device entirely, presenting the ward from a conventional third-person camera, which removes a layer of ambiguity about how much of the story is Bromden's distorted perception.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$7dd5433c-e10c-4a55-993e-8f7c51c58510$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Chief Bromden's backstory about his father and their land being taken is left out of the film.$txt$,
    $txt$The novel includes significant detail about Bromden's past, including how his Native American father was worn down and exploited until the family lost their land, which the book ties to Bromden's sense of powerlessness. The film keeps Bromden as a major character but omits this backstory almost entirely.$txt$,
    false,
    $q$approved$q$
  ),

  -- Little Women
  (
    $q$d3d6461e-4c52-4c8a-b182-e3da4b7093b6$q$::uuid,
    $q$Timeline$q$,
    $txt$Gerwig's film interweaves two timelines, childhood and adulthood, while the novel proceeds in straightforward chronological order.$txt$,
    $txt$Alcott's book tells the March sisters' story in a single linear sequence, moving forward through their childhood and into adulthood. The 2019 film instead cuts back and forth between two time periods throughout, juxtaposing the sisters as children with their lives years later, a structural choice unique to this adaptation.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$d3d6461e-4c52-4c8a-b182-e3da4b7093b6$q$::uuid,
    $q$Ending$q$,
    $txt$The film adds an ambiguous, meta-textual ending about whether Jo actually marries Professor Bhaer that isn't in the book.$txt$,
    $txt$Alcott's novel has Jo marry Friedrich Bhaer in a fairly straightforward conclusion. Gerwig's film instead frames Jo's marriage as something possibly invented to satisfy a publisher who insisted the heroine be married off, intercut with Jo negotiating to keep the copyright to her book -- a layer of commentary on Alcott's own real publishing history that has no equivalent in the original text.$txt$,
    true,
    $q$approved$q$
  ),

  -- Atonement
  (
    $q$cd3dbf3c-fd74-41f7-9145-fd646cf6db75$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's five-and-a-half-minute unbroken tracking shot across the Dunkirk beach is a purely cinematic sequence without a counterpart in the prose.$txt$,
    $txt$One of the film's most famous sequences is a long, continuous tracking shot following Robbie through the chaos of soldiers awaiting evacuation at Dunkirk. McEwan's novel covers this same period of Robbie's life, but as prose narration rather than as a single sustained visual set piece -- the technique is specific to what the camera can do and has no direct literary equivalent.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$cd3dbf3c-fd74-41f7-9145-fd646cf6db75$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel spends considerably more time on Briony's years working as a wartime nurse before its final revelation.$txt$,
    $txt$McEwan's book devotes an extended section to Briony's grueling, detailed experience as a trainee nurse tending to wounded soldiers, tracing her slow, guilt-driven path toward atonement. The film compresses this period substantially to move more quickly toward its final twist.$txt$,
    false,
    $q$approved$q$
  ),

  -- Room
  (
    $q$f67e165f-5aaa-4c6f-84d4-97228b0cad28$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is narrated entirely from inside five-year-old Jack's limited understanding; the film shows events, including some involving Ma alone, that Jack never witnesses.$txt$,
    $txt$Donoghue's book is told completely in Jack's first-person voice, so the reader only ever learns what Jack himself perceives and understands about Room and, later, the outside world. The film, while still centered on Jack, includes scenes from Ma's perspective that Jack isn't present for, such as a televised interview, giving the audience information the novel's narration never provides.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$f67e165f-5aaa-4c6f-84d4-97228b0cad28$q$::uuid,
    $q$Added Content$q$,
    $txt$The film adds a television interview scene confronting Ma about her parenting choices that isn't part of the book's structure.$txt$,
    $txt$While the novel does include Ma facing public and family scrutiny after their rescue, the film crystallizes this into a specific, pointed televised interview scene in which a host questions Ma's decisions in captivity, giving the film's midsection a dramatic beat that isn't staged the same way on the page.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Fault in Our Stars
  (
    $q$0cdb8680-b6f4-4c16-988e-45c8acb7e5de$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel gives much more space to Hazel's reflections on the fictional book "An Imperial Affliction" and its deliberately unfinished ending.$txt$,
    $txt$Green's book spends substantial time on Hazel's relationship with the novel-within-the-novel, which ends mid-sentence, using it as an extended metaphor for her own fear of leaving things unresolved when she dies. The film keeps the book and the trip to find its author but can't replicate the same depth of literary interiority that the prose devotes to it.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$0cdb8680-b6f4-4c16-988e-45c8acb7e5de$q$::uuid,
    $q$Character$q$,
    $txt$Peter Van Houten's rudeness and alcoholism are portrayed with more nuance and backstory in the novel than the film has room for.$txt$,
    $txt$The book explores more of Van Houten's grief over his own daughter's death as the root of his bitterness and drinking, giving his hostile behavior toward Hazel and Augustus more context. The film retains him as a similarly unpleasant figure but compresses this backstory considerably.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Hunger Games
  (
    $q$a0d3fa92-425f-4385-b1f9-b9cd2fa4ebf3$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel is narrated entirely in Katniss's first-person, present-tense voice; the film shows scenes and characters, like the Gamemakers' control room, that Katniss never sees.$txt$,
    $txt$Collins's book keeps the reader locked inside Katniss's head throughout, so her strategy, fear, and grief are the only lens on events. The film adds scenes outside the arena entirely -- including Seneca Crane and the Gamemakers manipulating the Games from a control room -- giving the audience information and context Katniss herself never has access to in the book.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$a0d3fa92-425f-4385-b1f9-b9cd2fa4ebf3$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Katniss's internal guilt and grief over Rue's death is dwelt on at much greater length in the book.$txt$,
    $txt$The novel spends considerable interior narration on how deeply Rue's death affects Katniss, tying it to her own younger sister and shaping her growing anger at the Capitol. The film includes the moment and its staged tribute of flowers, but without Katniss's prose narration, it necessarily conveys less of her extended emotional processing.$txt$,
    true,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
