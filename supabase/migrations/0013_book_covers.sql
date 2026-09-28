-- ============================================================================
-- Add real book cover images (sourced from Open Library)
-- ============================================================================
-- Same idea as the movie_poster_url migration, but for book_cover_url,
-- which was also NULL on every row. Cover IDs were looked up per book via
-- Open Library's /search.json endpoint (matched by title + author, closest
-- publish year) and turned into a stable covers.openlibrary.org URL.
-- ============================================================================

update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/276518-L.jpg$q$ where id = $q$9fb27472-835f-4935-a80c-100bef23e037$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/14627060-L.jpg$q$ where id = $q$e08eb5a9-e483-4434-9eb1-8ba8874bf6f7$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/12376585-L.jpg$q$ where id = $q$205715d7-cf7a-48b1-a654-d00a072ce1ee$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/12882940-L.jpg$q$ where id = $q$7ac48b57-8ddd-4545-a9ac-76bafbe03988$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/12646537-L.jpg$q$ where id = $q$41039f5e-8e35-4169-884e-126b77ed6d39$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/12272568-L.jpg$q$ where id = $q$1f266fa2-f740-4988-a012-38cb0200590b$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/6507069-L.jpg$q$ where id = $q$6fae19ef-3f9c-4463-b678-0f1257247367$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/981738-L.jpg$q$ where id = $q$5e92c9c9-77ae-48cf-b36f-276e9f552857$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/7890578-L.jpg$q$ where id = $q$44a06be3-076a-46bd-afc5-4360f659187b$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/14653969-L.jpg$q$ where id = $q$8ba25157-3e7f-48c5-80f9-549d315873a2$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/8440296-L.jpg$q$ where id = $q$45d99e4b-7f25-4cab-af66-f557362fa7f6$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/9284881-L.jpg$q$ where id = $q$1f20b194-2e7f-4d53-99e3-d9b8b0c3ed75$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/474425-L.jpg$q$ where id = $q$3d10cdd1-d904-45c2-8894-72d7ab683949$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/552443-L.jpg$q$ where id = $q$f07aa83a-182a-453e-817c-f015ad403ac0$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/540893-L.jpg$q$ where id = $q$d47a1e13-de70-472b-bce0-dd8e59222bc1$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/9296899-L.jpg$q$ where id = $q$71377a8e-aef8-454d-b6cf-00b6dd29dc0f$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/14351077-L.jpg$q$ where id = $q$e1afaef1-4df1-44d4-814f-8e6dbad0967e$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/8580475-L.jpg$q$ where id = $q$e2358240-eabd-412e-bea8-7bc14113b612$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/12840573-L.jpg$q$ where id = $q$d5a61dd7-d95b-4286-b5cf-74a48b7f0f70$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/528271-L.jpg$q$ where id = $q$252997e7-b3ed-4971-90df-33d44f46b686$q$;
update adaptations set book_cover_url = $q$https://covers.openlibrary.org/b/id/14171421-L.jpg$q$ where id = $q$93de8109-1811-4d68-8b2b-f860929b6b66$q$;
