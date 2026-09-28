-- ============================================================================
-- Add real movie poster images (sourced from TMDB)
-- ============================================================================
-- Every adaptation's movie_poster_url was NULL, so every card on the site
-- showed a blank placeholder instead of real artwork. This fills in a real
-- poster image for each of the 20 existing adaptations, pulled from The
-- Movie Database (TMDB) — id and poster_path looked up via TMDB's
-- /search/movie endpoint and confirmed to resolve before being added here.
-- ============================================================================

update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/wuMc08IPKEatf9rnMNXvIDxqP4W.jpg$q$ where id = $q$9fb27472-835f-4935-a80c-100bef23e037$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg$q$ where id = $q$e08eb5a9-e483-4434-9eb1-8ba8874bf6f7$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/uAR0AWqhQL1hQa69UDEbb2rE5Wx.jpg$q$ where id = $q$205715d7-cf7a-48b1-a654-d00a072ce1ee$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/d9mtMGQDLANKieb9PbD3yK7xxzo.jpg$q$ where id = $q$7ac48b57-8ddd-4545-a9ac-76bafbe03988$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/apa5G43Hha7kH7wJG0gkkHT7FA9.jpg$q$ where id = $q$41039f5e-8e35-4169-884e-126b77ed6d39$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/ts996lKsxvjkO2yiYG0ht4qAicO.jpg$q$ where id = $q$1f266fa2-f740-4988-a012-38cb0200590b$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/3bhkrj58Vtu7enYsRolD1fZdja1.jpg$q$ where id = $q$6fae19ef-3f9c-4463-b678-0f1257247367$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/Cw4hIUIAmSYfK9QfaUW5igp9La.jpg$q$ where id = $q$5e92c9c9-77ae-48cf-b36f-276e9f552857$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/jSziioSwPVrOy9Yow3XhWIBDjq1.jpg$q$ where id = $q$44a06be3-076a-46bd-afc5-4360f659187b$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg$q$ where id = $q$8ba25157-3e7f-48c5-80f9-549d315873a2$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/lxM6kqilAdpdhqUl2biYp5frUxE.jpg$q$ where id = $q$45d99e4b-7f25-4cab-af66-f557362fa7f6$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/2FC9L9MrjBoGHYjYZjdWQdopVYb.jpg$q$ where id = $q$1f20b194-2e7f-4d53-99e3-d9b8b0c3ed75$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/uCC3j4pV9eOZwzDUWp2ilbcTf1f.jpg$q$ where id = $q$f07aa83a-182a-453e-817c-f015ad403ac0$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/tjK063yCgaBAluVU72rZ6PKPH2l.jpg$q$ where id = $q$d47a1e13-de70-472b-bce0-dd8e59222bc1$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/6d5XOczc226jECq0LIX0siKtgHR.jpg$q$ where id = $q$71377a8e-aef8-454d-b6cf-00b6dd29dc0f$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/pKUaZNOb2FDdzSz7kWyAuBMhA8I.jpg$q$ where id = $q$e1afaef1-4df1-44d4-814f-8e6dbad0967e$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/uS9m8OBk1A8eM9I042bx8XXpqAq.jpg$q$ where id = $q$e2358240-eabd-412e-bea8-7bc14113b612$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/iLgRu4hhSr6V1uManX6ukDriiSc.jpg$q$ where id = $q$d5a61dd7-d95b-4286-b5cf-74a48b7f0f70$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/8912AsVuS7Sj915apArUFbv6F9L.jpg$q$ where id = $q$252997e7-b3ed-4971-90df-33d44f46b686$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/4jeFXQYytChdZYE9JYO7Un87IlW.jpg$q$ where id = $q$93de8109-1811-4d68-8b2b-f860929b6b66$q$;
update adaptations set movie_poster_url = $q$https://image.tmdb.org/t/p/w500/3NIzyXkfylsjflRKSz8Fts3lXzm.jpg$q$ where id = $q$3d10cdd1-d904-45c2-8894-72d7ab683949$q$;
