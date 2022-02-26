--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _auth_group; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_group OWNER TO rebasedata;

--
-- Name: _auth_group_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_group_permissions OWNER TO rebasedata;

--
-- Name: _auth_permission; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_permission (
    id smallint,
    content_type_id smallint,
    codename character varying(18) DEFAULT NULL::character varying,
    name character varying(23) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_permission OWNER TO rebasedata;

--
-- Name: _auth_user; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user (
    id smallint,
    password character varying(88) DEFAULT NULL::character varying,
    last_login character varying(10) DEFAULT NULL::character varying,
    is_superuser smallint,
    username character varying(6) DEFAULT NULL::character varying,
    last_name character varying(1) DEFAULT NULL::character varying,
    email character varying(24) DEFAULT NULL::character varying,
    is_staff smallint,
    is_active smallint,
    date_joined character varying(10) DEFAULT NULL::character varying,
    first_name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user OWNER TO rebasedata;

--
-- Name: _auth_user_groups; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_groups (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user_groups OWNER TO rebasedata;

--
-- Name: _auth_user_user_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_user_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user_user_permissions OWNER TO rebasedata;

--
-- Name: _authtoken_token; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._authtoken_token (
    key character varying(40) DEFAULT NULL::character varying,
    created character varying(10) DEFAULT NULL::character varying,
    user_id smallint
);


ALTER TABLE public._authtoken_token OWNER TO rebasedata;

--
-- Name: _django_admin_log; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_admin_log (
    id smallint,
    action_time character varying(10) DEFAULT NULL::character varying,
    object_id smallint,
    object_repr character varying(21) DEFAULT NULL::character varying,
    change_message character varying(89) DEFAULT NULL::character varying,
    content_type_id smallint,
    user_id smallint,
    action_flag smallint
);


ALTER TABLE public._django_admin_log OWNER TO rebasedata;

--
-- Name: _django_content_type; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_content_type (
    id smallint,
    app_label character varying(12) DEFAULT NULL::character varying,
    model character varying(11) DEFAULT NULL::character varying
);


ALTER TABLE public._django_content_type OWNER TO rebasedata;

--
-- Name: _django_migrations; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_migrations (
    id smallint,
    app character varying(12) DEFAULT NULL::character varying,
    name character varying(40) DEFAULT NULL::character varying,
    applied character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._django_migrations OWNER TO rebasedata;

--
-- Name: _django_session; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_session (
    session_key character varying(32) DEFAULT NULL::character varying,
    session_data character varying(227) DEFAULT NULL::character varying,
    expire_date character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._django_session OWNER TO rebasedata;

--
-- Name: _order_order; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_order (
    id smallint,
    first_name character varying(6) DEFAULT NULL::character varying,
    last_name character varying(6) DEFAULT NULL::character varying,
    email character varying(22) DEFAULT NULL::character varying,
    address character varying(4) DEFAULT NULL::character varying,
    zipcode character varying(4) DEFAULT NULL::character varying,
    place character varying(4) DEFAULT NULL::character varying,
    phone character varying(3) DEFAULT NULL::character varying,
    created_at character varying(10) DEFAULT NULL::character varying,
    paid_amount smallint,
    stripe_token character varying(28) DEFAULT NULL::character varying,
    user_id smallint
);


ALTER TABLE public._order_order OWNER TO rebasedata;

--
-- Name: _order_orderitem; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._order_orderitem (
    id smallint,
    price smallint,
    quantity smallint,
    order_id smallint,
    product_id smallint
);


ALTER TABLE public._order_orderitem OWNER TO rebasedata;

--
-- Name: _product_category; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._product_category (
    id smallint,
    name character varying(5) DEFAULT NULL::character varying,
    slug character varying(5) DEFAULT NULL::character varying
);


ALTER TABLE public._product_category OWNER TO rebasedata;

--
-- Name: _product_product; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._product_product (
    id smallint,
    name character varying(17) DEFAULT NULL::character varying,
    slug character varying(17) DEFAULT NULL::character varying,
    description character varying(24) DEFAULT NULL::character varying,
    price smallint,
    image character varying(41) DEFAULT NULL::character varying,
    thumbnail character varying(49) DEFAULT NULL::character varying,
    date_added character varying(10) DEFAULT NULL::character varying,
    category_id smallint
);


ALTER TABLE public._product_product OWNER TO rebasedata;

--
-- Name: _sqlite_sequence; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._sqlite_sequence (
    name character varying(19) DEFAULT NULL::character varying,
    seq smallint
);


ALTER TABLE public._sqlite_sequence OWNER TO rebasedata;

--
-- Data for Name: _auth_group; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: _auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _auth_permission; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_permission (id, content_type_id, codename, name) FROM stdin;
1	1	add_logentry	Can add log entry
2	1	change_logentry	Can change log entry
3	1	delete_logentry	Can delete log entry
4	1	view_logentry	Can view log entry
5	2	add_permission	Can add permission
6	2	change_permission	Can change permission
7	2	delete_permission	Can delete permission
8	2	view_permission	Can view permission
9	3	add_group	Can add group
10	3	change_group	Can change group
11	3	delete_group	Can delete group
12	3	view_group	Can view group
13	4	add_user	Can add user
14	4	change_user	Can change user
15	4	delete_user	Can delete user
16	4	view_user	Can view user
17	5	add_contenttype	Can add content type
18	5	change_contenttype	Can change content type
19	5	delete_contenttype	Can delete content type
20	5	view_contenttype	Can view content type
21	6	add_session	Can add session
22	6	change_session	Can change session
23	6	delete_session	Can delete session
24	6	view_session	Can view session
25	7	add_token	Can add Token
26	7	change_token	Can change Token
27	7	delete_token	Can delete Token
28	7	view_token	Can view Token
29	8	add_tokenproxy	Can add token
30	8	change_tokenproxy	Can change token
31	8	delete_tokenproxy	Can delete token
32	8	view_tokenproxy	Can view token
33	9	add_category	Can add category
34	9	change_category	Can change category
35	9	delete_category	Can delete category
36	9	view_category	Can view category
37	10	add_product	Can add product
38	10	change_product	Can change product
39	10	delete_product	Can delete product
40	10	view_product	Can view product
41	11	add_order	Can add order
42	11	change_order	Can change order
43	11	delete_order	Can delete order
44	11	view_order	Can view order
45	12	add_orderitem	Can add order item
46	12	change_orderitem	Can change order item
47	12	delete_orderitem	Can delete order item
48	12	view_orderitem	Can view order item
\.


--
-- Data for Name: _auth_user; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) FROM stdin;
1	pbkdf2_sha256$320000$s7CkgQyciPf3VUBJBsbfPq$wgZ6KtygtFO7FCo1cAN3NHgQlgy8Mk2GrB/HYDbNRK0=	2022-02-25	1	garcia		garcia.leamor1@gmail.com	1	1	2022-02-22	
2	pbkdf2_sha256$320000$obI1I8WdQyAEP7Wrfm7EM9$w3XOnBEsHMX/GEeKfz/iCwAwWYTAph6HB+lZhODtYzU=	2022-02-25	0	leamor			0	1	2022-02-25	
\.


--
-- Data for Name: _auth_user_groups; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: _auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _authtoken_token; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._authtoken_token (key, created, user_id) FROM stdin;
ce2658ce5f1ea894e55d4065400aed27a7a5dcbb	2022-02-25	2
\.


--
-- Data for Name: _django_admin_log; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) FROM stdin;
1	2022-02-25	1	Ladies	[{"added": {}}]	9	1	1
2	2022-02-25	1	Women	[{"changed": {"fields": ["Name", "Slug"]}}]	9	1	2
3	2022-02-25	2	Men	[{"added": {}}]	9	1	1
4	2022-02-25	1	Mesh Sandal	[{"added": {}}]	10	1	1
5	2022-02-25	1	Mesh Sandal	[{"changed": {"fields": ["Image", "Thumbnail"]}}]	10	1	2
6	2022-02-25	1	Brown Flowered Sandal	[{"changed": {"fields": ["Name", "Slug", "Description", "Price", "Image", "Thumbnail"]}}]	10	1	2
7	2022-02-25	1	Casual Ladies Shoes	[{"changed": {"fields": ["Name", "Slug", "Description", "Price", "Image", "Thumbnail"]}}]	10	1	2
8	2022-02-25	1	Casual Black Shoes	[{"changed": {"fields": ["Name", "Slug", "Description", "Price", "Image", "Thumbnail"]}}]	10	1	2
9	2022-02-25	1	Comfortably Brown	[{"changed": {"fields": ["Name", "Slug", "Description", "Price", "Image", "Thumbnail"]}}]	10	1	2
10	2022-02-25	2	Formal Men Shoes	[{"added": {}}]	10	1	1
\.


--
-- Data for Name: _django_content_type; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
3	auth	group
2	auth	permission
4	auth	user
7	authtoken	token
8	authtoken	tokenproxy
5	contenttypes	contenttype
11	order	order
12	order	orderitem
9	product	category
10	product	product
6	sessions	session
\.


--
-- Data for Name: _django_migrations; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-02-22
2	auth	0001_initial	2022-02-22
3	admin	0001_initial	2022-02-22
4	admin	0002_logentry_remove_auto_add	2022-02-22
5	admin	0003_logentry_add_action_flag_choices	2022-02-22
6	contenttypes	0002_remove_content_type_name	2022-02-22
7	auth	0002_alter_permission_name_max_length	2022-02-22
8	auth	0003_alter_user_email_max_length	2022-02-22
9	auth	0004_alter_user_username_opts	2022-02-22
10	auth	0005_alter_user_last_login_null	2022-02-22
11	auth	0006_require_contenttypes_0002	2022-02-22
12	auth	0007_alter_validators_add_error_messages	2022-02-22
13	auth	0008_alter_user_username_max_length	2022-02-22
14	auth	0009_alter_user_last_name_max_length	2022-02-22
15	auth	0010_alter_group_name_max_length	2022-02-22
16	auth	0011_update_proxy_permissions	2022-02-22
17	auth	0012_alter_user_first_name_max_length	2022-02-22
18	authtoken	0001_initial	2022-02-22
19	authtoken	0002_auto_20160226_1747	2022-02-22
20	authtoken	0003_tokenproxy	2022-02-22
21	product	0001_initial	2022-02-22
22	order	0001_initial	2022-02-22
23	sessions	0001_initial	2022-02-22
\.


--
-- Data for Name: _django_session; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_session (session_key, session_data, expire_date) FROM stdin;
9vkctzxwk2utmcxjdlr9c6bm5sqerxhf	.eJxVjEEOwiAQRe_C2pBCOwO4dN8zkIGZSNXQpLQr491tky50-997_60ibWuJW5MlTqyuyqjL75YoP6UegB9U77POc12XKelD0SdtepxZXrfT_Tso1MpeB-Lg2IKDoSOBgNkY7r3vhbwXSC7lHWdEax0gYgBnMrsOsJcgYVCfL8-pNw0:1nMc30:VcfSrl4rFfEa9Qv-v30WNMhnjLxekesUiEJB7vfex-4	2022-03-08
zmsn8qni4x9p08p1c2bufo42df9w33lu	.eJxVjEEOwiAQRe_C2pBCOwO4dN8zkIGZSNXQpLQr491tky50-997_60ibWuJW5MlTqyuyqjL75YoP6UegB9U77POc12XKelD0SdtepxZXrfT_Tso1MpeB-Lg2IKDoSOBgNkY7r3vhbwXSC7lHWdEax0gYgBnMrsOsJcgYVCfL8-pNw0:1nNcjb:CWIAC5sDnpnkyQ8VNip99RyTS_TbpeislVBkVMnhjts	2022-03-11
\.


--
-- Data for Name: _order_order; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_order (id, first_name, last_name, email, address, zipcode, place, phone, created_at, paid_amount, stripe_token, user_id) FROM stdin;
1	Leamor	Garcia	leamorgarcia@gmail.com	Cebu	6000	Cebu	123	2022-02-25	145	tok_1KX7goEGJfFBlQrlPuALdD3T	2
2	Leamor	Garcia	leamorgarcia@gmail.com	Cebu	6000	Cebu	123	2022-02-25	145	tok_1KX7gsEGJfFBlQrlnvDzpYD0	2
3	f	f	f	f	6000	f	123	2022-02-25	100	tok_1KX7vUEGJfFBlQrlYHkamPp9	2
4	gggg	g	gg	h	6000	hu	123	2022-02-25	145	tok_1KX7xVEGJfFBlQrlUfWxvLCq	2
5	g	g	g	g	6000	g	123	2022-02-25	145	tok_1KX82sEGJfFBlQrlBy4CWO9n	2
6	f	f	f	f	6000	f	123	2022-02-25	145	tok_1KX87TEGJfFBlQrlUuojqOCj	2
7	f	f	f	f	6000	gdfg	123	2022-02-25	145	tok_1KX8F4EGJfFBlQrlbYVIhP2h	2
8	ff	f	f	f	f	f	f	2022-02-25	145	tok_1KX9hQEGJfFBlQrlOsiakens	2
9	f	f	f	f	f	f	f	2022-02-25	245	tok_1KXA7IEGJfFBlQrlGlMMvRa5	2
\.


--
-- Data for Name: _order_orderitem; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._order_orderitem (id, price, quantity, order_id, product_id) FROM stdin;
1	145	1	1	1
2	145	1	2	1
3	100	1	3	2
4	145	1	4	1
5	145	1	5	1
6	145	1	6	1
7	145	1	7	1
8	145	1	8	1
9	145	1	9	1
10	100	1	9	2
\.


--
-- Data for Name: _product_category; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._product_category (id, name, slug) FROM stdin;
1	Women	women
2	Men	men
\.


--
-- Data for Name: _product_product; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._product_product (id, name, slug, description, price, image, thumbnail, date_added, category_id) FROM stdin;
1	Comfortably Brown	comfortably_brown	Brown Sandal for Ladies	145	uploads/HTB1funNacfrK1RkSmLy760GApXaJ.png	uploads/HTB1funNacfrK1RkSmLy760GApXaJ_HpQYS2x.png	2022-02-25	1
2	Formal Men Shoes	formal_men_shoes	Formal Men Shoes - Black	100	uploads/men.jpg	uploads/men_sC1zr29.jpg	2022-02-25	2
\.


--
-- Data for Name: _sqlite_sequence; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._sqlite_sequence (name, seq) FROM stdin;
django_migrations	23
django_admin_log	10
django_content_type	12
auth_permission	48
auth_group	0
auth_user	2
product_category	2
product_product	2
order_order	9
order_orderitem	10
\.


--
-- PostgreSQL database dump complete
--

