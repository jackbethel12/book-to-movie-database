// These types mirror the database tables created in
// supabase/migrations/0001_init.sql. Keeping them in one place means every
// page that talks to Supabase agrees on what a row looks like.

export const DIFFERENCE_CATEGORIES = [
  "Plot",
  "Ending",
  "Character",
  "Setting",
  "Theme/Tone",
  "Timeline",
  "Omitted Content",
  "Added Content",
] as const;

export type DifferenceCategory = (typeof DIFFERENCE_CATEGORIES)[number];

export type DifferenceStatus = "pending" | "approved" | "rejected";

export type Adaptation = {
  id: string;
  title: string;
  author: string | null;
  book_publish_year: number | null;
  movie_title: string | null;
  director: string | null;
  movie_release_year: number | null;
  genres: string[];
  book_cover_url: string | null;
  movie_poster_url: string | null;
  goodreads_id: string | null;
  imdb_id: string | null;
  created_at: string;
};

export type DifferenceEntry = {
  id: string;
  adaptation_id: string;
  category: DifferenceCategory;
  summary: string;
  detail: string | null;
  spoiler_flag: boolean;
  submitted_by: string | null;
  upvotes: number;
  downvotes: number;
  status: DifferenceStatus;
  created_at: string;
};
