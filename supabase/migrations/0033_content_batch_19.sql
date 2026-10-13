-- ============================================================================
-- Content batch 19 (true-story adaptations): The Imitation Game, First Man,
-- A Beautiful Mind, Catch Me If You Can, The Wolf of Wall Street, Lincoln,
-- Unbroken, American Sniper
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve. Checked
-- against every title in supabase/seed.sql and every migration before
-- writing this -- none of these eight overlap.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$dacb5b0f-a7aa-4d4e-b365-d6edebb5c113$q$, $q$Alan Turing: The Enigma$q$, $q$Andrew Hodges$q$, 1983, $q$The Imitation Game$q$, $q$Morten Tyldum$q$, 2014, array[$q$Drama$q$, $q$History$q$], $txt$During World War II, a brilliant and socially awkward mathematician leads a secret team racing to crack Nazi Germany's Enigma code, while quietly concealing a part of his own life that British law has made a crime.$txt$, $q$https://covers.openlibrary.org/b/id/6381830-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/zSqJ1qFq8NXFfi7JeIYMlzyR0dx.jpg$q$),
  ($q$8359eadc-7302-4bec-a40f-60c26a7ba669$q$, $q$First Man: The Life of Neil A. Armstrong$q$, $q$James R. Hansen$q$, 2005, $q$First Man$q$, $q$Damien Chazelle$q$, 2018, array[$q$Drama$q$, $q$History$q$], $txt$Drawing on years of personal loss and risk, Neil Armstrong navigates the dangerous Gemini and Apollo space programs on the way to becoming the first person to walk on the moon.$txt$, $q$https://covers.openlibrary.org/b/id/12186927-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/i91mfvFcPPlaegcbOyjGgiWfZzh.jpg$q$),
  ($q$d8de2be0-0c7c-4b94-a427-61abfc80daf9$q$, $q$A Beautiful Mind$q$, $q$Sylvia Nasar$q$, 1998, $q$A Beautiful Mind$q$, $q$Ron Howard$q$, 2001, array[$q$Drama$q$, $q$History$q$], $txt$A brilliant but troubled mathematician's groundbreaking work is overtaken by the onset of schizophrenia, and his wife and colleagues must help him find a way to live with the illness without losing his mind to it.$txt$, $q$https://covers.openlibrary.org/b/id/480024-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/rEIg5yJdNOt9fmX4P8gU9LeNoTQ.jpg$q$),
  ($q$74207043-0dd6-4079-8544-f0d74f920064$q$, $q$Catch Me If You Can$q$, $q$Frank Abagnale$q$, 1980, $q$Catch Me If You Can$q$, $q$Steven Spielberg$q$, 2002, array[$q$Crime$q$, $q$Drama$q$, $q$Comedy$q$], $txt$A teenage con artist successfully poses as a pilot, a doctor, and a lawyer while forging millions of dollars in checks, all while a dogged FBI agent pursues him across the country and around the world.$txt$, $q$https://covers.openlibrary.org/b/id/4650043-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/ctjEj2xM32OvBXCq8zAdK3ZrsAj.jpg$q$),
  ($q$8c4a970e-e124-43e3-88a0-f0622041ff82$q$, $q$The Wolf of Wall Street$q$, $q$Jordan Belfort$q$, 2007, $q$The Wolf of Wall Street$q$, $q$Martin Scorsese$q$, 2013, array[$q$Drama$q$, $q$Comedy$q$], $txt$A stockbroker builds a wildly corrupt brokerage empire fueled by fraud, drugs, and excess, narrating his own rise and spectacular downfall with unapologetic relish.$txt$, $q$https://covers.openlibrary.org/b/id/374261-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/kW9LmvYHAaS9iA0tHmZVq8hQYoq.jpg$q$),
  ($q$4767bae8-75af-40d7-923f-e91f0d3a454a$q$, $q$Team of Rivals$q$, $q$Doris Kearns Goodwin$q$, 2005, $q$Lincoln$q$, $q$Steven Spielberg$q$, 2012, array[$q$Drama$q$, $q$History$q$], $txt$In the final months of the Civil War, President Abraham Lincoln fights to secure the votes needed to pass the Thirteenth Amendment and permanently abolish slavery before the war's end.$txt$, $q$https://covers.openlibrary.org/b/id/11555058-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/7mUYEkv9W3ek61eetZCfMQYVoi.jpg$q$),
  ($q$7da49dad-151a-4ddf-8bff-9975a62b098e$q$, $q$Unbroken$q$, $q$Laura Hillenbrand$q$, 2010, $q$Unbroken$q$, $q$Angelina Jolie$q$, 2014, array[$q$Drama$q$, $q$History$q$, $q$War$q$], $txt$An Olympic runner turned World War II bombardier survives a plane crash and 47 days adrift at sea, only to endure years of brutal captivity in a Japanese prisoner-of-war camp.$txt$, $q$https://covers.openlibrary.org/b/id/6668103-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/vAlHUjHwLWMV5mg4epGR9WSIfiy.jpg$q$),
  ($q$fbcb0760-9414-4baa-a1bf-8976ce2e643d$q$, $q$American Sniper$q$, $q$Chris Kyle$q$, 2012, $q$American Sniper$q$, $q$Clint Eastwood$q$, 2014, array[$q$Drama$q$, $q$War$q$, $q$History$q$], $txt$A Navy SEAL sniper becomes the deadliest marksman in U.S. military history across four tours in Iraq, while the war's toll follows him home and strains his marriage and sense of self.$txt$, $q$https://covers.openlibrary.org/b/id/12811044-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/i1U46OwMc6vlm7OoSUKfqUH615e.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- Alan Turing: The Enigma / The Imitation Game
  (
    $q$dacb5b0f-a7aa-4d4e-b365-d6edebb5c113$q$::uuid,
    $q$Character$q$,
    $txt$The film's detective-story framing device, with Turing being interrogated by police in the 1950s, is a structure invented for the movie rather than how Hodges's biography is organized.$txt$,
    $txt$The film intercuts the wartime codebreaking story with a 1950s police investigation into Turing, using the interrogation as a framing device to reveal his story. Hodges's biography, a work of conventional historical nonfiction, doesn't use this device -- it's a dramatic structure built for the film.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$dacb5b0f-a7aa-4d4e-b365-d6edebb5c113$q$::uuid,
    $q$Character$q$,
    $txt$The film compresses and alters several real figures and events at Bletchley Park for dramatic clarity, including Turing's relationships with his colleagues.$txt$,
    $txt$Historians and the book's own detailed account note that the film takes liberties with the dynamics among the codebreaking team, condensing the contributions of multiple real mathematicians and dramatizing conflicts that didn't play out exactly as shown, in service of a clearer three-act structure than the historical record provides.$txt$,
    false,
    $q$approved$q$
  ),

  -- First Man
  (
    $q$8359eadc-7302-4bec-a40f-60c26a7ba669$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book spends far more time on the technical and institutional history of NASA's space program than the film, which stays tightly focused on Armstrong's personal experience.$txt$,
    $txt$Hansen's biography, drawing on extensive interviews and archival research, documents the broader engineering and political history of the Gemini and Apollo programs in detail. Chazelle's film deliberately narrows its focus to Armstrong's subjective, often disorienting personal experience, leaving out much of this wider institutional context.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$8359eadc-7302-4bec-a40f-60c26a7ba669$q$::uuid,
    $q$Added Content$q$,
    $txt$The film's quiet moment of Armstrong leaving his daughter's bracelet in a crater on the moon is a dramatized invention, not a documented historical fact.$txt$,
    $txt$This emotional beat near the film's end is an interpretive dramatization rather than something Hansen's biography presents as a confirmed historical event -- Armstrong never publicly confirmed doing any such thing, and the film treats it as symbolic rather than strictly factual.$txt$,
    true,
    $q$approved$q$
  ),

  -- A Beautiful Mind
  (
    $q$d8de2be0-0c7c-4b94-a427-61abfc80daf9$q$::uuid,
    $q$Character$q$,
    $txt$The film depicts John Nash's hallucinations as visual, people he can see and interact with; the real Nash's schizophrenia, as described in the book, was primarily auditory.$txt$,
    $txt$Nasar's biography describes Nash's delusions as centering mainly on voices and paranoid beliefs rather than seeing fully realized hallucinated people. The film invents visual hallucinated characters, like Nash's college roommate and a government agent, as a cinematic device to show his condition from the inside, which isn't how the book depicts his actual experience.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$d8de2be0-0c7c-4b94-a427-61abfc80daf9$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book covers considerably more of the real turmoil in Nash's personal life, including his divorce from Alicia and his relationships outside the marriage, than the film does.$txt$,
    $txt$Nasar's biography documents a messier, more complicated personal history, including that John and Alicia Nash actually divorced for a period before later remarrying. The film simplifies this into a single continuous marriage, smoothing over details the book covers in more depth.$txt$,
    false,
    $q$approved$q$
  ),

  -- Catch Me If You Can
  (
    $q$74207043-0dd6-4079-8544-f0d74f920064$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$Abagnale's own memoir has long been scrutinized by journalists for exaggerating the scale of his real-life cons, and the film follows the memoir's version of events rather than independently verifying them.$txt$,
    $txt$Investigative reporting after the book and film's success raised doubts about how much of Abagnale's account was accurate versus embellished for a better story. The film is a faithful dramatization of the memoir's narrative, which means it inherits the same questions about reliability that have been raised about the book itself.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$74207043-0dd6-4079-8544-f0d74f920064$q$::uuid,
    $q$Character$q$,
    $txt$The relationship between Abagnale and FBI agent Carl Hanratty is softened and fictionalized for the film; the book's real pursuing agents were different and less personally connected to Frank.$txt$,
    $txt$The film's Agent Hanratty is a composite character invented for the movie, developing an ongoing cat-and-mouse rapport with Frank that becomes almost fatherly by the film's end. The real investigation, as described in the book, didn't involve this kind of singular, personally invested pursuer.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Wolf of Wall Street
  (
    $q$8c4a970e-e124-43e3-88a0-f0622041ff82$q$::uuid,
    $q$Timeline$q$,
    $txt$The film compresses years of events at Stratton Oakmont into a tighter, more rapid-fire timeline than the memoir's longer, more gradual account.$txt$,
    $txt$Belfort's memoir covers a longer and more detailed stretch of his firm's rise and fall, including many more individual incidents and schemes than the film has time to dramatize. Scorsese's film condenses and reorders events for pace, giving the impression of an even more breakneck, uninterrupted spiral than the book's longer timeline.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$8c4a970e-e124-43e3-88a0-f0622041ff82$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book spends more time on the specific mechanics of the securities fraud and pump-and-dump schemes than the film, which focuses more on excess and spectacle.$txt$,
    $txt$Belfort's memoir goes into more procedural detail about exactly how the stock schemes worked. The film keeps enough of this to establish the crime but leans much more heavily into depicting the drug-fueled lifestyle and excess that resulted from it, shifting the balance of what's actually shown on screen.$txt$,
    false,
    $q$approved$q$
  ),

  -- Team of Rivals / Lincoln
  (
    $q$4767bae8-75af-40d7-923f-e91f0d3a454a$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Goodwin's book is a sweeping group biography of Lincoln and his cabinet across his full presidency; the film adapts only a narrow slice covering the final push to pass the Thirteenth Amendment.$txt$,
    $txt$"Team of Rivals" traces Lincoln's entire political career and the intertwined lives of the rivals he brought into his cabinet, spanning years of the presidency and the Civil War. Spielberg's film deliberately narrows its focus to just the last few months of Lincoln's life and the amendment fight, leaving out the vast majority of the book's scope.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$4767bae8-75af-40d7-923f-e91f0d3a454a$q$::uuid,
    $q$Character$q$,
    $txt$Thaddeus Stevens's radical abolitionist views and personal history are dramatized with specific inventions in the film not drawn directly from the book's account.$txt$,
    $txt$The film gives Congressman Thaddeus Stevens a dramatized personal life, including his relationship with his housekeeper Lydia Hamilton Smith, treated with more intimacy on screen than the historical record Goodwin's book draws from fully confirms.$txt$,
    false,
    $q$approved$q$
  ),

  -- Unbroken
  (
    $q$7da49dad-151a-4ddf-8bff-9975a62b098e$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book continues well past the end of the war to cover Louis Zamperini's postwar struggle with PTSD and alcoholism and his eventual religious conversion; the film ends before most of this.$txt$,
    $txt$Hillenbrand's book devotes a substantial final section to Zamperini's difficult return to civilian life, his descent into alcoholism and rage, and his later redemption through faith at a Billy Graham revival. The film ends essentially at the war's conclusion, only briefly summarizing this entire later chapter of his life in closing text.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$7da49dad-151a-4ddf-8bff-9975a62b098e$q$::uuid,
    $q$Character$q$,
    $txt$The book spends much more time on Zamperini's prewar life as an Olympic runner, including his troubled youth, than the film does.$txt$,
    $txt$Hillenbrand's biography opens with an extensive account of Zamperini's rebellious childhood and his path to the 1936 Berlin Olympics, establishing his character well before the war. The film moves through this background more briefly to get to the plane crash and captivity that make up most of its runtime.$txt$,
    false,
    $q$approved$q$
  ),

  -- American Sniper
  (
    $q$fbcb0760-9414-4baa-a1bf-8976ce2e643d$q$::uuid,
    $q$Character$q$,
    $txt$The film invents a fictional rival enemy sniper as a recurring antagonist across multiple tours, a device not present in Kyle's memoir.$txt$,
    $txt$The movie gives Kyle a specific rival sniper nemesis he faces off against repeatedly over the course of the film, building a personal arc of pursuit between them. Kyle's memoir doesn't describe this kind of singular ongoing rivalry with one named opposing sniper -- it's a dramatic composite built for the film's narrative structure.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$fbcb0760-9414-4baa-a1bf-8976ce2e643d$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The memoir's voice is more blunt and matter-of-fact about Kyle's views on the war; the film gives more weight to his psychological toll and the strain on his marriage.$txt$,
    $txt$Kyle's own book is written in a direct, unreflective first-person military voice with less emphasis on interior doubt. The film, while keeping Kyle's skill and commitment intact, puts noticeably more dramatic weight on his difficulty readjusting to civilian life and the impact on his family than the book's more clipped narration does.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
