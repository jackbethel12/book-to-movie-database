-- ============================================================================
-- Content batch 8: Gone with the Wind, Fahrenheit 451, The Princess
-- Diaries, Charlie and the Chocolate Factory (Willy Wonka), Matilda, The
-- Outsiders, The Notebook, Legally Blonde
-- ============================================================================
-- Same dollar-quoting convention as previous batches. Poster/cover URLs
-- looked up via TMDB and Open Library and confirmed to resolve.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$c4096b2a-b44c-4916-9a17-5aa560624236$q$, $q$Gone with the Wind$q$, $q$Margaret Mitchell$q$, 1936, $q$Gone with the Wind$q$, $q$Victor Fleming$q$, 1939, array[$q$Drama$q$, $q$Romance$q$], $txt$As the Civil War upends the Old South, a strong-willed Georgia belle fights to hold onto her family's plantation and navigates a tumultuous, decades-long love triangle.$txt$, $q$https://covers.openlibrary.org/b/id/14817133-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/lNz2Ow0wGCAvzckW7EOjE03KcYv.jpg$q$),
  ($q$17b1e424-018a-4661-9e8d-c7dd55aad996$q$, $q$Fahrenheit 451$q$, $q$Ray Bradbury$q$, 1953, $q$Fahrenheit 451$q$, $q$Ramin Bahrani$q$, 2018, array[$q$Science Fiction$q$, $q$Dystopian$q$], $txt$In a future where books are outlawed and firemen burn any they find, one fireman begins to question everything he's been taught to destroy.$txt$, $q$https://covers.openlibrary.org/b/id/12993656-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/urH9H50gKbUK8U6qTVd89SLQPjx.jpg$q$),
  ($q$5e915fa1-0c72-4465-aa58-96db1ef4e078$q$, $q$The Princess Diaries$q$, $q$Meg Cabot$q$, 2000, $q$The Princess Diaries$q$, $q$Garry Marshall$q$, 2001, array[$q$Comedy$q$, $q$Family$q$], $txt$An awkward San Francisco teenager discovers she's secretly the heir to a European throne, and must be transformed into a proper princess before the world finds out.$txt$, $q$https://covers.openlibrary.org/b/id/6874781-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/7axhsbEzFan6HQQ1aMOy7w3CFRx.jpg$q$),
  ($q$804ee5f3-e21c-4074-abb7-951baaa57fec$q$, $q$Charlie and the Chocolate Factory$q$, $q$Roald Dahl$q$, 1964, $q$Willy Wonka & the Chocolate Factory$q$, $q$Mel Stuart$q$, 1971, array[$q$Family$q$, $q$Fantasy$q$], $txt$A poor boy who wins one of five golden tickets gets a once-in-a-lifetime tour of the world's most mysterious candy factory, run by its eccentric and reclusive owner.$txt$, $q$https://covers.openlibrary.org/b/id/12459564-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/vmpsZkrs4Uvkp9r1atL8B3frA63.jpg$q$),
  ($q$893c71ec-547b-4f43-ac68-3004dc60c5e3$q$, $q$Matilda$q$, $q$Roald Dahl$q$, 1988, $q$Matilda$q$, $q$Danny DeVito$q$, 1996, array[$q$Family$q$, $q$Comedy$q$], $txt$A brilliant young girl with neglectful parents and a tyrannical headmistress discovers she has a remarkable gift, and the courage to use it.$txt$, $q$https://covers.openlibrary.org/b/id/12889769-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/wYoDpWInsBEVSmWStnRH06ddoyk.jpg$q$),
  ($q$f80f53d9-555e-47fe-ab49-739165c2a27c$q$, $q$The Outsiders$q$, $q$S. E. Hinton$q$, 1967, $q$The Outsiders$q$, $q$Francis Ford Coppola$q$, 1983, array[$q$Drama$q$], $txt$Two rival teenage gangs from opposite sides of the tracks clash in a small Oklahoma town, testing the bonds of loyalty and family within one boy's close-knit group of friends.$txt$, $q$https://covers.openlibrary.org/b/id/7263662-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/l9os0HcXY8BOkvUWAx4rvby3j6L.jpg$q$),
  ($q$60cfe36c-3bb0-42d3-8c0a-fd107557d2c6$q$, $q$The Notebook$q$, $q$Nicholas Sparks$q$, 1996, $q$The Notebook$q$, $q$Nick Cassavetes$q$, 2004, array[$q$Romance$q$, $q$Drama$q$], $txt$A poor young man and a wealthy young woman fall deeply in love one summer, only to be separated by her disapproving parents and the years that follow.$txt$, $q$https://covers.openlibrary.org/b/id/7382153-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/rNzQyW4f8B8cQeg7Dgj3n6eT5k9.jpg$q$),
  ($q$7c7369f0-692b-4392-bb3b-3fa37021521a$q$, $q$Legally Blonde$q$, $q$Amanda Brown$q$, 2001, $q$Legally Blonde$q$, $q$Robert Luketic$q$, 2001, array[$q$Comedy$q$], $txt$Determined to win back her ex-boyfriend, a fashion-obsessed sorority president follows him to Harvard Law School, where she surprises everyone, including herself.$txt$, $q$https://covers.openlibrary.org/b/id/297261-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/9ohlMrJHQqKhfUKh7Zr3JQqHNLZ.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  -- Gone with the Wind
  (
    $q$c4096b2a-b44c-4916-9a17-5aa560624236$q$::uuid,
    $q$Character$q$,
    $txt$Scarlett has three children in the novel, one by each husband; the film focuses on just one.$txt$,
    $txt$Mitchell's book gives Scarlett a son, Wade, with her first husband Charles Hamilton, and a daughter, Ella, with her second husband Frank Kennedy, alongside Bonnie with Rhett. The film all but omits Wade and Ella, centering almost entirely on Bonnie, which simplifies Scarlett's family life considerably compared to the novel.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$c4096b2a-b44c-4916-9a17-5aa560624236$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The novel's explicit references to the Ku Klux Klan are softened to a vaguer "political meeting" in the film.$txt$,
    $txt$Mitchell's book is explicit that the men's organization Frank Kennedy and Ashley belong to, and the raid that gets Frank killed, is tied to the Klan during Reconstruction. The film deliberately avoids naming the group, referring to it only as a political club, a change widely attributed to the studio wanting to soften the material for a 1939 general audience.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$c4096b2a-b44c-4916-9a17-5aa560624236$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Scarlett's postwar business ventures get far more detail in the book.$txt$,
    $txt$The novel spends real time on Scarlett running two lumber mills after the war, including her controversial use of convict labor, as part of her transformation into a hardened businesswoman. The film touches on her general wealth and ambition but compresses this whole thread significantly.$txt$,
    false,
    $q$approved$q$
  ),

  -- Fahrenheit 451
  (
    $q$17b1e424-018a-4661-9e8d-c7dd55aad996$q$::uuid,
    $q$Added Content$q$,
    $txt$The film updates Bradbury's 1953 technology to a modern surveillance-state internet analogue.$txt$,
    $txt$Bradbury's novel imagines wall-sized "parlor" television and seashell radio earpieces as its vision of future media. The 2018 film reimagines the firemen's world around a heavily censored, algorithm-driven internet and social network called "the Nine," along with digital tattoos and drones -- all modernized inventions of the film, not in the original book.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$17b1e424-018a-4661-9e8d-c7dd55aad996$q$::uuid,
    $q$Ending$q$,
    $txt$How books get preserved at the end is handled completely differently between the two.$txt$,
    $txt$The novel ends with Montag joining a group of exiled "book people," each of whom has memorized an entire book word-for-word to keep it alive orally, walking toward a ruined city. The film invents its own method entirely: the resistance works to preserve texts by encoding them into bird DNA, a device with no basis in Bradbury's book and one that was widely remarked on by critics at the time.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$17b1e424-018a-4661-9e8d-c7dd55aad996$q$::uuid,
    $q$Character$q$,
    $txt$Clarisse McClellan's role is far larger and longer-lasting in the film.$txt$,
    $txt$In the novel, Clarisse disappears (implied killed) fairly early on, functioning mainly as the spark for Montag's doubts. The film keeps her alive and active much longer, making her an ongoing member of the resistance working alongside Montag rather than an early, brief influence.$txt$,
    true,
    $q$approved$q$
  ),

  -- The Princess Diaries
  (
    $q$5e915fa1-0c72-4465-aa58-96db1ef4e078$q$::uuid,
    $q$Plot$q$,
    $txt$Mia's father is alive but terminally ill in the book; the film has him already deceased before the story starts.$txt$,
    $txt$Cabot's novel is built around Mia's father, Prince Philippe, being unable to have more children due to cancer treatment, which is why Mia is unexpectedly his heir -- a plot point that continues across the book series. The film reworks this so that Mia's father has already died before the story begins, changing the emotional setup behind why she's suddenly a princess.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$5e915fa1-0c72-4465-aa58-96db1ef4e078$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel's diary format gives Mia a much quirkier, more anxious inner voice than the film does.$txt$,
    $txt$Written entirely as Mia's diary entries, the book leans into her neuroses, algebra anxiety, and rambling self-doubt in a very particular comic voice. The film's version of Mia, while still awkward, reads as more grounded and conventionally relatable, losing some of the book's more eccentric first-person humor in translation.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$5e915fa1-0c72-4465-aa58-96db1ef4e078$q$::uuid,
    $q$Character$q$,
    $txt$Mia and Michael's relationship develops much more slowly across the book series than in the film.$txt$,
    $txt$The novel treats Mia's feelings for her friend Lilly's brother Michael as a slow-burn arc that plays out gradually over multiple books. The single film has to compress a version of this romance into one movie, changing its pacing and some of the specifics of how it plays out.$txt$,
    false,
    $q$approved$q$
  ),

  -- Charlie and the Chocolate Factory (Willy Wonka & the Chocolate Factory)
  (
    $q$804ee5f3-e21c-4074-abb7-951baaa57fec$q$::uuid,
    $q$Added Content$q$,
    $txt$The entire "Slugworth" spy subplot was invented for the film.$txt$,
    $txt$In the movie, a mysterious man named Slugworth approaches each golden ticket winner offering money for a stolen Everlasting Gobstopper, secretly testing their honesty -- with a final twist that "Slugworth" was one of Wonka's own employees all along. None of this exists in Dahl's novel; it's a subplot created specifically for the film.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$804ee5f3-e21c-4074-abb7-951baaa57fec$q$::uuid,
    $q$Added Content$q$,
    $txt$The Fizzy Lifting Drinks scene, where Charlie nearly gets disqualified, doesn't happen in the book.$txt$,
    $txt$In the film, Charlie and Grandpa Joe secretly drink a forbidden fizzy soda and nearly get sucked into a ceiling fan, almost costing Charlie the factory for breaking the rules. In Dahl's novel, Charlie never breaks a single rule during the tour -- he's the only child who behaves perfectly throughout, which is simply why he wins. The near-disqualification is entirely a film addition.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$804ee5f3-e21c-4074-abb7-951baaa57fec$q$::uuid,
    $q$Ending$q$,
    $txt$The film stages a bigger climax around the Slugworth reveal before Charlie gets the factory.$txt$,
    $txt$The book has Wonka simply and straightforwardly give Charlie the factory once the tour ends, with his whole family (including all four grandparents) moving in. The film builds its ending around the Slugworth test paying off and Charlie proving his honesty, before the famous glass elevator flight over the town -- a more elaborately staged finale than the book's.$txt$,
    true,
    $q$approved$q$
  ),

  -- Matilda
  (
    $q$893c71ec-547b-4f43-ac68-3004dc60c5e3$q$::uuid,
    $q$Setting$q$,
    $txt$The story is relocated from England to the United States for the film.$txt$,
    $txt$Dahl's novel is set in an English village, with a British school system and sensibility throughout. Danny DeVito's film moves the whole story to an American suburb, adjusting the setting, accents, and cultural references accordingly.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$893c71ec-547b-4f43-ac68-3004dc60c5e3$q$::uuid,
    $q$Added Content$q$,
    $txt$The film adds an FBI subplot around Mr. Wormwood's car-dealership fraud that isn't in the book.$txt$,
    $txt$In the novel, the Wormwoods simply move away for vague reasons once Matilda is settled with Miss Honey. The film expands this into a more active crime-caper thread, with the FBI closing in on Mr. Wormwood over his shady used-car business, forcing the family to flee the country -- an addition not found in Dahl's original story.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$893c71ec-547b-4f43-ac68-3004dc60c5e3$q$::uuid,
    $q$Character$q$,
    $txt$Matilda's parents are played broader and more cartoonishly in the film.$txt$,
    $txt$Both versions make the Wormwoods neglectful and shallow, but the film leans further into exaggerated, comic performances -- particularly Mrs. Wormwood's bingo obsession and vanity -- than the book's drier, more matter-of-fact descriptions of them.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Outsiders
  (
    $q$f80f53d9-555e-47fe-ab49-739165c2a27c$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel's final twist, that the whole book is Ponyboy's school essay, doesn't fully carry over to the film.$txt$,
    $txt$Hinton's novel ends by revealing that the story the reader just finished is the theme Ponyboy was assigned to write for English class -- meaning the entire novel has been that essay all along. The film keeps Ponyboy's opening and closing voiceover narration but doesn't reconstruct that same literary, meta-textual reveal in quite the same way.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$f80f53d9-555e-47fe-ab49-739165c2a27c$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Sodapop's relationship with his ex-girlfriend Sandy gets more background in the book.$txt$,
    $txt$The novel gives some context to Sodapop's breakup with Sandy, tying into the group's broader hardships. The film, adapted very faithfully overall, still trims this particular thread along with a few other minor-character details to keep its runtime manageable.$txt$,
    false,
    $q$approved$q$
  ),

  -- The Notebook
  (
    $q$60cfe36c-3bb0-42d3-8c0a-fd107557d2c6$q$::uuid,
    $q$Character$q$,
    $txt$Lon Hammond, Allie's fiance, is a more nuanced figure in the novel than in the film.$txt$,
    $txt$Sparks's book gives Lon real depth and gives Allie's choice between him and Noah genuine emotional weight and ambiguity. The film simplifies Lon into a more straightforwardly "safe but wrong" option, making Allie's decision read as more clear-cut on screen than it does on the page.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$60cfe36c-3bb0-42d3-8c0a-fd107557d2c6$q$::uuid,
    $q$Omitted Content$q$,
    $txt$Noah's wartime experience and letters get much more page time in the book.$txt$,
    $txt$The novel includes more of Noah's World War II service and his correspondence during that period, adding to the sense of lost time between him and Allie. The film condenses his time at war into a brief montage.$txt$,
    false,
    $q$approved$q$
  ),

  -- Legally Blonde
  (
    $q$7c7369f0-692b-4392-bb3b-3fa37021521a$q$::uuid,
    $q$Plot$q$,
    $txt$The film's central murder-trial plot doesn't exist in the novel at all.$txt$,
    $txt$The courtroom case that drives the back half of the movie -- Brooke Windham accused of murdering her husband, with Elle's knowledge of perm hair-care rules cracking the alibi -- was written specifically for the screenplay. Amanda Brown's novel follows Elle through a different, more loosely plotted set of social and academic struggles at Harvard, without a central mystery or trial.$txt$,
    true,
    $q$approved$q$
  ),
  (
    $q$7c7369f0-692b-4392-bb3b-3fa37021521a$q$::uuid,
    $q$Character$q$,
    $txt$Paulette, Elle's manicurist friend, doesn't appear in the book.$txt$,
    $txt$Paulette is one of the film's most memorable supporting characters and a key part of Elle's support system, but she was created for the movie and has no equivalent in Brown's original novel.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$7c7369f0-692b-4392-bb3b-3fa37021521a$q$::uuid,
    $q$Theme/Tone$q$,
    $txt$The novel has a noticeably more cynical, darker comic edge than the film's wholesome girl-power arc.$txt$,
    $txt$Brown's book leans into a sharper, more satirical take on Elle, Harvard, and the legal world, and doesn't wrap things up with the same uplifting "be yourself and you'll triumph" message the film is known for. The movie's version of Elle and its overall tone are considerably more optimistic and crowd-pleasing than the source material.$txt$,
    false,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
