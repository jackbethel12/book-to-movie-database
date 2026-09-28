-- ============================================================================
-- Add Project Hail Mary
-- ============================================================================
-- Same dollar-quoting convention as previous batches. This one released
-- after Claude's training cutoff (March 2026), so the difference entries
-- below are drawn from published book-vs-movie coverage (High On Films,
-- Space.com, SlashFilm, CBR, Collider, Tom's Guide) rather than direct
-- knowledge of the film, and are worth double-checking against your own
-- viewing.
-- ============================================================================

insert into adaptations (id, title, author, book_publish_year, movie_title, director, movie_release_year, genres, synopsis, book_cover_url, movie_poster_url)
values
  ($q$2ee877d5-389b-472f-86e6-16762b176cd3$q$, $q$Project Hail Mary$q$, $q$Andy Weir$q$, 2021, $q$Project Hail Mary$q$, $q$Phil Lord and Christopher Miller$q$, 2026, array[$q$Science Fiction$q$, $q$Adventure$q$], $txt$A lone astronaut wakes up on a spacecraft with no memory of who he is or how he got there, and must piece together a desperate mission to save Earth from a dying sun before it is too late.$txt$, $q$https://covers.openlibrary.org/b/id/11200092-L.jpg$q$, $q$https://image.tmdb.org/t/p/w500/iOb2fjXLbpJgyQXe46n1WtGCnaa.jpg$q$)
on conflict (id) do nothing;

insert into difference_entries (adaptation_id, category, summary, detail, spoiler_flag, status)
select v.adaptation_id, v.category, v.summary, v.detail, v.spoiler_flag, v.status
from (values

  (
    $q$2ee877d5-389b-472f-86e6-16762b176cd3$q$::uuid,
    $q$Omitted Content$q$,
    $txt$The book's coma-resistance gene subplot is cut from the film entirely.$txt$,
    $txt$In the novel, a major plot thread involves a rare gene that lets a person survive years of induced coma during the long automated flight -- Grace's possession of it is the actual reason Eva Stratt forces him onto the mission in the first place.

The film drops this subplot. Instead, Grace is selected and pressed into the mission purely because he's established as the world's foremost expert on Astrophage biology, simplifying his reason for being on the ship at all.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2ee877d5-389b-472f-86e6-16762b176cd3$q$::uuid,
    $q$Character$q$,
    $txt$Carl, a fairly prominent Earth-side character in the film, does not exist in the book.$txt$,
    $txt$The movie introduces Carl, who provides Grace with security and personal support during the first act and becomes one of the few Earth-based characters with substantial dialogue. He has no equivalent in Weir's novel, which doesn't spend comparable time on a dedicated Earth-side supporting character in that role.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2ee877d5-389b-472f-86e6-16762b176cd3$q$::uuid,
    $q$Timeline$q$,
    $txt$Grace's amnesia and memory recovery play out much faster in the film than in the book.$txt$,
    $txt$The novel takes considerably longer to have Grace piece together who he is and how he got on the ship, letting that disorientation and slow reveal breathe as its own extended section. The film compresses this significantly to keep the story moving within a feature runtime.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2ee877d5-389b-472f-86e6-16762b176cd3$q$::uuid,
    $q$Setting$q$,
    $txt$The Hail Mary itself is redesigned for the film.$txt$,
    $txt$The movie's version of the ship is built around a central living pillar with the rocket systems arranged around it, giving Grace a noticeably different, more open interior space to move through than the ship as described in the book.$txt$,
    false,
    $q$approved$q$
  ),
  (
    $q$2ee877d5-389b-472f-86e6-16762b176cd3$q$::uuid,
    $q$Ending$q$,
    $txt$The film is more ambiguous about whether the mission actually worked, and adds an Earth-side epilogue the book doesn't have.$txt$,
    $txt$In the book, the Eridians directly confirm to Grace that Earth's sun has returned to full strength -- he gets clear, explicit confirmation that the probes he sent back worked and humanity is saved, which is one of the book's most emotional beats.

The film withholds that same direct confirmation. Rocky tells Grace the Eridians could send him home now that the ship is repaired, but he chooses to stay, at least for now, without the story ever spelling out for the audience that the mission definitely succeeded. The movie does add its own new closing scene the book doesn't have, though: a brief return to Earth showing frozen oceans from the dimmed sun, and Eva Stratt alive and beginning the next phase of the project after receiving the beetles Grace sent back -- a more explicitly hopeful coda than the novel's ending, even without its direct confirmation to Grace himself.$txt$,
    true,
    $q$approved$q$
  )

) as v(adaptation_id, category, summary, detail, spoiler_flag, status)
where not exists (
  select 1 from difference_entries e
  where e.adaptation_id = v.adaptation_id and e.summary = v.summary
);
