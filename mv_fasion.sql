--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	store	collection
7	store	product
8	store	productimage
9	store	variant
10	users	user
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add collection	6	add_collection
22	Can change collection	6	change_collection
23	Can delete collection	6	delete_collection
24	Can view collection	6	view_collection
25	Can add product	7	add_product
26	Can change product	7	change_product
27	Can delete product	7	delete_product
28	Can view product	7	view_product
29	Can add product image	8	add_productimage
30	Can change product image	8	change_productimage
31	Can delete product image	8	delete_productimage
32	Can view product image	8	view_productimage
33	Can add variant	9	add_variant
34	Can change variant	9	change_variant
35	Can delete variant	9	delete_variant
36	Can view variant	9	view_variant
37	Can add user	10	add_user
38	Can change user	10	change_user
39	Can delete user	10	delete_user
40	Can view user	10	view_user
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_user (password, last_login, is_superuser, first_name, last_name, email, is_staff, is_active, date_joined, id, phone) FROM stdin;
pbkdf2_sha256$320000$KNnuVXB2TDHrZk8Qji7GYa$u6ab5BSt2YHH2Gdsq77dXntugRd/tVUw6ItfYD97RRY=	2022-03-28 09:51:40.044385+01	t			admin@admin.com	t	t	2022-03-17 11:16:10.280217+01	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01	\N
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-03-17 11:16:41.14758+01	1	Myosotis	1	[{"added": {}}]	6	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
2	2022-03-17 11:19:46.478998+01	1	Robe	1	[{"added": {}}]	7	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
3	2022-03-17 11:20:25.510713+01	1	Variant object (1)	1	[{"added": {}}]	9	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
4	2022-03-17 11:21:24.72225+01	1	ProductImage object (1)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
5	2022-03-17 16:54:09.152124+01	1	Product object (1)	2	[{"changed": {"fields": ["Nom", "Description", "Mat\\u00e9riel", "Genre"]}}]	7	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
6	2022-03-17 17:18:56.360903+01	1	ProductImage object (1)	2	[]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
7	2022-03-17 17:19:10.914484+01	2	ProductImage object (2)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
8	2022-03-17 17:19:21.401561+01	3	ProductImage object (3)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
9	2022-03-17 17:19:38.781507+01	4	ProductImage object (4)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
10	2022-03-17 17:20:01.541112+01	5	ProductImage object (5)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
11	2022-03-17 17:20:20.896068+01	4	ProductImage object (4)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
12	2022-03-17 18:01:02.543874+01	5	ProductImage object (5)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
13	2022-03-17 18:01:02.54758+01	3	ProductImage object (3)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
14	2022-03-17 18:01:02.548784+01	2	ProductImage object (2)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
15	2022-03-17 18:01:02.549794+01	1	ProductImage object (1)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
16	2022-03-17 18:01:15.092891+01	6	ProductImage object (6)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
17	2022-03-17 18:01:23.036069+01	7	ProductImage object (7)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
18	2022-03-17 18:01:29.368955+01	8	ProductImage object (8)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
19	2022-03-17 18:01:36.287689+01	9	ProductImage object (9)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
20	2022-03-17 18:32:25.798688+01	2	Combinaison Soie fleurie 2	1	[{"added": {}}]	7	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
21	2022-03-17 18:33:41.152213+01	3	Pantalon et Chemisier Crêpe 3	1	[{"added": {}}]	7	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
22	2022-03-17 18:34:29.489853+01	4	Pantalon et Chemisier Crêpe 4	1	[{"added": {}}]	7	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
23	2022-03-17 18:37:53.318126+01	2	Combinaison Soie fleurie 2-Bleu ciel	1	[{"added": {}}]	9	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
24	2022-03-17 18:38:22.560291+01	3	Pantalon et Chemisier Crêpe 3-Jaune moutarde	1	[{"added": {}}]	9	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
25	2022-03-17 18:39:11.899048+01	3	Pantalon et Chemisier Crêpe 3-Violet	2	[{"changed": {"fields": ["Color"]}}]	9	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
26	2022-03-17 18:39:22.382799+01	4	Pantalon et Chemisier Crêpe 4-Jaune moutarde	1	[{"added": {}}]	9	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
27	2022-03-17 18:40:25.379443+01	10	ProductImage object (10)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
28	2022-03-17 18:40:35.306348+01	11	ProductImage object (11)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
29	2022-03-17 18:40:43.639263+01	12	ProductImage object (12)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
30	2022-03-17 18:40:56.094069+01	13	ProductImage object (13)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
31	2022-03-17 18:41:08.525967+01	14	ProductImage object (14)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
32	2022-03-17 18:41:18.359185+01	15	ProductImage object (15)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
33	2022-03-17 18:41:25.975148+01	16	ProductImage object (16)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
34	2022-03-17 18:41:37.810574+01	17	ProductImage object (17)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
35	2022-03-17 18:41:47.548405+01	18	ProductImage object (18)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
36	2022-03-17 18:41:58.529902+01	19	ProductImage object (19)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
37	2022-03-17 18:42:11.094135+01	20	ProductImage object (20)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
38	2022-03-17 18:42:29.151821+01	21	ProductImage object (21)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
39	2022-03-18 09:38:02.116906+01	1	Robe Longue Crèpe fleurie 1	2	[{"changed": {"fields": ["Description"]}}]	7	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
40	2022-03-18 09:40:27.692721+01	2	Combinaison Soie fleurie 2	2	[{"changed": {"fields": ["Description"]}}]	7	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
41	2022-03-18 09:40:53.609725+01	3	Pantalon et Chemisier Crêpe 3	2	[{"changed": {"fields": ["Description"]}}]	7	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
42	2022-03-18 09:41:11.19517+01	4	Pantalon et Chemisier Crêpe 4	2	[{"changed": {"fields": ["Description"]}}]	7	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
43	2022-03-18 15:58:40.099287+01	1	Robe Longue Crèpe 1	2	[{"changed": {"fields": ["Mat\\u00e9riel"]}}]	7	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
44	2022-03-18 15:58:48.993204+01	2	Combinaison Soie 2	2	[{"changed": {"fields": ["Mat\\u00e9riel"]}}]	7	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
45	2022-03-18 16:33:12.036344+01	2	Combinaison Soie 2	2	[{"changed": {"fields": ["Prix"]}}]	7	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
46	2022-03-28 09:52:08.516775+01	21	ProductImage object (21)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
47	2022-03-28 09:52:08.523868+01	20	ProductImage object (20)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
48	2022-03-28 09:52:08.524897+01	19	ProductImage object (19)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
49	2022-03-28 09:52:08.525838+01	18	ProductImage object (18)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
50	2022-03-28 09:52:08.526619+01	17	ProductImage object (17)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
51	2022-03-28 09:52:08.527376+01	16	ProductImage object (16)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
52	2022-03-28 09:52:08.528244+01	15	ProductImage object (15)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
53	2022-03-28 09:52:08.529025+01	14	ProductImage object (14)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
54	2022-03-28 09:52:08.529697+01	13	ProductImage object (13)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
55	2022-03-28 09:52:08.530402+01	12	ProductImage object (12)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
56	2022-03-28 09:52:08.531114+01	11	ProductImage object (11)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
57	2022-03-28 09:52:08.531744+01	10	ProductImage object (10)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
58	2022-03-28 09:52:08.532378+01	9	ProductImage object (9)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
59	2022-03-28 09:52:08.533036+01	8	ProductImage object (8)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
60	2022-03-28 09:52:08.533658+01	7	ProductImage object (7)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
61	2022-03-28 09:52:08.534326+01	6	ProductImage object (6)	3		8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
62	2022-03-28 09:56:04.701157+01	22	ProductImage object (22)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
63	2022-03-28 09:57:03.343141+01	23	ProductImage object (23)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
64	2022-03-28 09:57:22.755364+01	24	ProductImage object (24)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
65	2022-03-28 09:57:38.789586+01	25	ProductImage object (25)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
66	2022-03-28 09:58:21.125231+01	26	ProductImage object (26)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
67	2022-03-28 09:58:36.978559+01	27	ProductImage object (27)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
68	2022-03-28 09:58:50.742666+01	28	ProductImage object (28)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
69	2022-03-28 09:59:02.713047+01	29	ProductImage object (29)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
70	2022-03-28 09:59:26.66616+01	30	ProductImage object (30)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
71	2022-03-28 09:59:50.088313+01	31	ProductImage object (31)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
72	2022-03-28 10:00:04.321858+01	32	ProductImage object (32)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
73	2022-03-28 10:00:16.60656+01	33	ProductImage object (33)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
74	2022-03-28 10:00:39.94775+01	34	ProductImage object (34)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
75	2022-03-28 10:01:02.362979+01	35	ProductImage object (35)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
76	2022-03-28 10:01:16.062525+01	36	ProductImage object (36)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
77	2022-03-28 10:01:34.43268+01	37	ProductImage object (37)	1	[{"added": {}}]	8	6e3f3ec9-a8d0-40df-b9bc-f3cac844ac01
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-03-17 11:14:41.8769+01
2	contenttypes	0002_remove_content_type_name	2022-03-17 11:14:41.884899+01
3	auth	0001_initial	2022-03-17 11:14:41.913291+01
4	auth	0002_alter_permission_name_max_length	2022-03-17 11:14:41.918686+01
5	auth	0003_alter_user_email_max_length	2022-03-17 11:14:41.923857+01
6	auth	0004_alter_user_username_opts	2022-03-17 11:14:41.929614+01
7	auth	0005_alter_user_last_login_null	2022-03-17 11:14:41.935405+01
8	auth	0006_require_contenttypes_0002	2022-03-17 11:14:41.937049+01
9	auth	0007_alter_validators_add_error_messages	2022-03-17 11:14:41.94201+01
10	auth	0008_alter_user_username_max_length	2022-03-17 11:14:41.946841+01
11	auth	0009_alter_user_last_name_max_length	2022-03-17 11:14:41.953116+01
12	auth	0010_alter_group_name_max_length	2022-03-17 11:14:41.960577+01
13	auth	0011_update_proxy_permissions	2022-03-17 11:14:41.965556+01
14	auth	0012_alter_user_first_name_max_length	2022-03-17 11:14:41.970875+01
15	users	0001_initial	2022-03-17 11:14:41.998235+01
16	admin	0001_initial	2022-03-17 11:14:42.01276+01
17	admin	0002_logentry_remove_auto_add	2022-03-17 11:14:42.022977+01
18	admin	0003_logentry_add_action_flag_choices	2022-03-17 11:14:42.030496+01
19	sessions	0001_initial	2022-03-17 11:14:42.038017+01
20	store	0001_initial	2022-03-17 11:14:42.056051+01
21	store	0002_remove_product_quantity_remove_productimage_product_and_more	2022-03-17 11:14:42.094625+01
22	users	0002_alter_user_first_name_alter_user_last_name	2022-03-17 11:14:42.108333+01
23	users	0003_alter_user_managers_remove_user_username_and_more	2022-03-17 11:14:42.14722+01
24	store	0003_alter_product_price_alter_product_size	2022-03-17 11:19:42.675742+01
25	store	0004_product_genre_product_material_and_more	2022-03-17 11:52:21.804174+01
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
mdquzbnyfjfsxrfxuo68mz2hrkkggvmi	.eJxVjDkOwjAQRe_iGlu2ZxLZlPScIZrFJixKpCwV4u4kUgoofvXe-2_T0br03TqXqburOZu2QIUi2VJSb9FrtZxZbAUhSYgkPpjTb8YkzzLsrT5ouI1OxmGZ7ux2xR10dtdRy-tyuH8HPc39VlfOEAESxpx8SJEDYhJSbDRx9ZEgFIJSwXNotokCtMEXQvQBq5rPF282QXA:1nUnB5:vRjwGZ3YbsB5EIcthfKK7ZGYnabNZmJgKNqLQRhEdds	2022-03-31 11:16:19.912851+01
ximvunzoqy6f7uexeg2qr1472y6lln69	.eJxVjDkOwjAQRe_iGlu2ZxLZlPScIZrFJixKpCwV4u4kUgoofvXe-2_T0br03TqXqburOZu2QIUi2VJSb9FrtZxZbAUhSYgkPpjTb8YkzzLsrT5ouI1OxmGZ7ux2xR10dtdRy-tyuH8HPc39VlfOEAESxpx8SJEDYhJSbDRx9ZEgFIJSwXNotokCtMEXQvQBq5rPF282QXA:1nYl6C:_0PELYBYZR-snmy4t6Y2b_Bzzv-Mr6l4AtmZ9yAW-Ts	2022-04-11 09:51:40.051218+01
\.


--
-- Data for Name: store_collection; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.store_collection (id, title, description) FROM stdin;
1	Myosotis	Myosotis
\.


--
-- Data for Name: store_product; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.store_product (id, name, description, size, price, collection_id, style, genre, material) FROM stdin;
3	\N	La combinaison de ces deux tissus de crêpes, nous a permis de confectionner cet ensemble à tomber, qui vous donnera l’élégance qu’il faut dans vos évènements professionnels.	{M}	35000.00	1	Pantalon et Chemisier	Pour elle	Crêpe
4	\N	Dans le souci d’apporter un esprit pétillant dans votre dressing, nous avons opter pour ce pantalon jaune moutarde et ce chemisier multicolore. Cette pièce permettra de sublimer votre corps.	{M}	35000.00	1	Pantalon et Chemisier	Pour elle	Crêpe
1	\N	Notre magnifique robe multicolore d’été, légère et fluide s’emporte partout ! Généralement confectionner à partir de la crêpe de polyester, cette pièce résistante, permet d’économiser le temps de repassage car elle ne se froisse pas.	{M}	25000.00	1	Robe Longue	Pour elle	Crèpe
2	\N	D’un bleu clair et orné de fleurs, notre combinaison en satin de soi est la pièce idéale pour vos festivités en familles ou entres amis. De par sa douceur, elle apporte une fraicheur unique à votre corps.	{M}	40000.00	1	Combinaison	Pour elle	Soie
\.


--
-- Data for Name: store_variant; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.store_variant (id, color, quantity, product_id) FROM stdin;
1	Mulicolor	1	1
2	Bleu ciel	1	2
3	Violet	1	3
4	Jaune moutarde	1	4
\.


--
-- Data for Name: store_productimage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.store_productimage (id, image, variant_id) FROM stdin;
22	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_1_K8gl7DF.jpg	1
23	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_23.jpg	1
24	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_25.jpg	1
25	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_21.jpg	1
26	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_2_vCHIkAB.jpg	2
27	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_35.jpg	2
28	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_32.jpg	2
29	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_36.jpg	2
30	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_11.jpg	3
31	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_10.jpg	3
32	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_7.jpg	3
33	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_15.jpg	3
34	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_4.jpg	4
35	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_1.jpg	4
36	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_3.jpg	4
37	products_images/MV_FASHION_-_COLLECTION_MYOSOTIS_-_KING_ART_EMPIRE_-_12_fevrier_2022_-_2.jpg	4
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 77, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- Name: store_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.store_collection_id_seq', 1, true);


--
-- Name: store_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.store_product_id_seq', 4, true);


--
-- Name: store_productimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.store_productimage_id_seq', 37, true);


--
-- Name: store_variant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.store_variant_id_seq', 4, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

