# Book vs. Movie Database — MVP Spec

## Concept
A searchable database of book-to-movie adaptations with structured, crowdsourced entries on what changed between the two. Not a review site (not "which is better") — a differences reference.

## Data Model

### Adaptation (the book/movie pair)
- title
- author
- book_publish_year
- movie_title (can differ from book title)
- director
- movie_release_year
- genre(s)
- poster/cover images (book + movie)
- goodreads_id / imdb_id (for pulling ratings via API, optional v2)

### Difference Entry (submitted content, linked to an Adaptation)
- category: enum — Plot, Ending, Character, Setting, Theme/Tone, Timeline, Omitted Content, Added Content
- summary: short (1-2 sentence) description of the change
- detail: longer optional explanation
- spoiler_flag: boolean
- submitted_by: user id
- upvotes / downvotes
- status: pending / approved / rejected (moderation queue)

### User
- username
- email
- submission count (for lightweight reputation/trust level)

## Core Features (MVP)
1. Browse/search adaptations — by title, author, director, year, genre
2. Adaptation detail page — shows all approved difference entries, grouped by category, spoiler-gated
3. Submit a difference — simple form, tied to an existing adaptation (or "request new adaptation" if it doesn't exist yet)
4. Voting — upvote/downvote entries for quality signal, sort by top-voted
5. Moderation queue — new submissions sit as "pending" until approved (by you initially, or a trust-score auto-approve later)
6. Spoiler toggle — collapse/blur spoiler entries by default

## Nice-to-haves (v2, not MVP)
- Pull live ratings from Goodreads/IMDb/OMDb APIs
- "Most-changed adaptations" leaderboard
- Tagging system (e.g. "changed ending," "removed subplot," "different POV")
- RSS/email digest of newly approved entries
- User profiles showing submission history

## Suggested Stack
- Frontend/backend: Next.js (App Router) — one framework, easy to deploy
- Database: Supabase (Postgres + built-in auth + row-level security for moderation)
- Hosting: Vercel (free tier is enough for MVP)
- Auth: Supabase auth (email or GitHub login) — keep it simple, no need to build your own

## Seeding the Database
Before opening to submissions, seed 30-50 well-known adaptations (Harry Potter, LOTR, The Shining, etc.) with real difference entries so the site isn't empty on day one. This can be done by hand or by having Claude research and draft structured entries for approval.

## Build Order (for a Claude Code session)
1. Scaffold Next.js app + Supabase connection
2. Data models/tables (Adaptation, DifferenceEntry, User)
3. Browse/search page (read-only, works off seed data)
4. Adaptation detail page with categorized differences
5. Submission form (no auth yet — just get it working)
6. Add auth + tie submissions to users
7. Add moderation queue (admin-only approve/reject view)
8. Add voting
9. Polish: spoiler toggle, images, search filters
