--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2024-02-26 22:26:50

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

DROP DATABASE scrumpoker;
--
-- TOC entry 3324 (class 1262 OID 584548)
-- Name: scrumpoker; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE scrumpoker WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';


ALTER DATABASE scrumpoker OWNER TO postgres;

\connect scrumpoker

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3325 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 584550)
-- Name: estimation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estimation (
    id bigint NOT NULL,
    created_by character varying(255) NOT NULL,
    created_date timestamp(6) without time zone NOT NULL,
    last_modified_by character varying(255),
    last_modified_date timestamp(6) without time zone,
    project_id bigint,
    user_id character varying(255),
    user_story_id bigint,
    value character varying(255),
    session_id bigint
);


ALTER TABLE public.estimation OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 584549)
-- Name: estimation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estimation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estimation_id_seq OWNER TO postgres;

--
-- TOC entry 3326 (class 0 OID 0)
-- Dependencies: 209
-- Name: estimation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estimation_id_seq OWNED BY public.estimation.id;


--
-- TOC entry 212 (class 1259 OID 584589)
-- Name: menu_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.menu_item (
    id bigint NOT NULL,
    created_by character varying(255) NOT NULL,
    created_date timestamp(6) without time zone NOT NULL,
    last_modified_by character varying(255),
    last_modified_date timestamp(6) without time zone,
    icon character varying(255),
    is_layout boolean,
    is_title boolean,
    label character varying(255),
    link character varying(255),
    parent_id bigint,
    roles character varying(255)
);


ALTER TABLE public.menu_item OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 584588)
-- Name: menu_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.menu_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_item_id_seq OWNER TO postgres;

--
-- TOC entry 3327 (class 0 OID 0)
-- Dependencies: 211
-- Name: menu_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.menu_item_id_seq OWNED BY public.menu_item.id;


--
-- TOC entry 3169 (class 2604 OID 584553)
-- Name: estimation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estimation ALTER COLUMN id SET DEFAULT nextval('public.estimation_id_seq'::regclass);


--
-- TOC entry 3170 (class 2604 OID 584592)
-- Name: menu_item id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_item ALTER COLUMN id SET DEFAULT nextval('public.menu_item_id_seq'::regclass);


--
-- TOC entry 3316 (class 0 OID 584550)
-- Dependencies: 210
-- Data for Name: estimation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estimation (id, created_by, created_date, last_modified_by, last_modified_date, project_id, user_id, user_story_id, value, session_id) FROM stdin;
16	adminuser	2024-02-21 19:11:54.801901	\N	2024-02-21 19:11:54.801901	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	10	1
17	adminuser	2024-02-21 19:15:56.608428	\N	2024-02-21 19:15:56.608428	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	20	1
18	adminuser	2024-02-21 19:16:01.616608	\N	2024-02-21 19:16:01.616608	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	cake	1
19	adminuser	2024-02-21 19:16:04.45519	\N	2024-02-21 19:16:04.45519	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	cake	1
20	adminuser	2024-02-21 19:16:05.175649	\N	2024-02-21 19:16:05.175649	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	cake	1
21	adminuser	2024-02-21 19:16:09.785751	\N	2024-02-21 19:16:09.785751	1	0d117ba3-e599-4eb8-99d7-846a274098e2	2	mouse	1
22	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	1	0d117ba3-e599-4eb8-99d7-846a274098e2	2	mouse	1
23	adminuser	2024-02-21 19:16:16.374994	\N	2024-02-21 19:16:16.374994	1	0d117ba3-e599-4eb8-99d7-846a274098e2	2	life	1
24	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	1
25	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	1
26	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	1
27	adminuser	2024-02-21 19:11:54.801901	\N	2024-02-21 19:11:54.801901	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	10	1
28	adminuser	2024-02-21 19:15:56.608428	\N	2024-02-21 19:15:56.608428	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	20	1
29	adminuser	2024-02-21 19:16:01.616608	\N	2024-02-21 19:16:01.616608	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	cake	1
30	adminuser	2024-02-21 19:16:04.45519	\N	2024-02-21 19:16:04.45519	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	cake	1
31	adminuser	2024-02-21 19:16:05.175649	\N	2024-02-21 19:16:05.175649	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	cake	1
32	adminuser	2024-02-21 19:16:09.785751	\N	2024-02-21 19:16:09.785751	1	0d117ba3-e599-4eb8-99d7-846a274098e2	2	mouse	1
33	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	1	0d117ba3-e599-4eb8-99d7-846a274098e2	2	mouse	1
34	adminuser	2024-02-21 19:16:16.374994	\N	2024-02-21 19:16:16.374994	1	0d117ba3-e599-4eb8-99d7-846a274098e2	2	life	1
35	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	1
36	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	1
37	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	1
38	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	1
39	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	1
40	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	1
41	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	1
42	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	1
43	adminuser	2024-02-21 19:11:54.801901	\N	2024-02-21 19:11:54.801901	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	10	2
44	adminuser	2024-02-21 19:15:56.608428	\N	2024-02-21 19:15:56.608428	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	20	2
45	adminuser	2024-02-21 19:16:01.616608	\N	2024-02-21 19:16:01.616608	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	cake	2
46	adminuser	2024-02-21 19:16:04.45519	\N	2024-02-21 19:16:04.45519	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	cake	2
47	adminuser	2024-02-21 19:16:05.175649	\N	2024-02-21 19:16:05.175649	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	cake	2
48	adminuser	2024-02-21 19:16:09.785751	\N	2024-02-21 19:16:09.785751	1	0d117ba3-e599-4eb8-99d7-846a274098e2	2	mouse	2
49	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	1	0d117ba3-e599-4eb8-99d7-846a274098e2	2	mouse	2
50	adminuser	2024-02-21 19:16:16.374994	\N	2024-02-21 19:16:16.374994	1	0d117ba3-e599-4eb8-99d7-846a274098e2	2	life	2
51	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	2
52	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	2
53	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	3	mouse	2
54	adminuser	2024-02-21 19:11:54.801901	\N	2024-02-21 19:11:54.801901	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	10	2
55	adminuser	2024-02-21 19:15:56.608428	\N	2024-02-21 19:15:56.608428	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	20	2
56	adminuser	2024-02-21 19:16:01.616608	\N	2024-02-21 19:16:01.616608	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	cake	2
57	adminuser	2024-02-21 19:16:04.45519	\N	2024-02-21 19:16:04.45519	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	cake	2
58	adminuser	2024-02-21 19:16:05.175649	\N	2024-02-21 19:16:05.175649	1	0d117ba3-e599-4eb8-99d7-846a274098e2	7	cake	2
59	adminuser	2024-02-21 19:16:09.785751	\N	2024-02-21 19:16:09.785751	1	0d117ba3-e599-4eb8-99d7-846a274098e2	2	mouse	2
60	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	1	0d117ba3-e599-4eb8-99d7-846a274098e2	2	mouse	2
61	adminuser	2024-02-21 19:16:16.374994	\N	2024-02-21 19:16:16.374994	1	0d117ba3-e599-4eb8-99d7-846a274098e2	2	life	2
62	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	4	mouse	2
63	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	4	mouse	2
64	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	4	mouse	2
65	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	4	mouse	2
66	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	5	mouse	2
67	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	5	mouse	2
68	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	5	mouse	2
69	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	5	mouse	2
70	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	6	mouse	2
71	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	6	mouse	2
72	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	6	mouse	2
73	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	6	mouse	2
74	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	6	mouse	2
75	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	6	mouse	2
76	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	6	mouse	2
77	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	6	mouse	2
78	adminuser	2024-02-21 19:11:54.801901	\N	2024-02-21 19:11:54.801901	1	0d117ba3-e599-4eb8-99d7-846a274098e2	8	10	2
79	adminuser	2024-02-21 19:15:56.608428	\N	2024-02-21 19:15:56.608428	1	0d117ba3-e599-4eb8-99d7-846a274098e2	8	20	2
80	adminuser	2024-02-21 19:16:01.616608	\N	2024-02-21 19:16:01.616608	1	0d117ba3-e599-4eb8-99d7-846a274098e2	8	cake	2
81	adminuser	2024-02-21 19:16:04.45519	\N	2024-02-21 19:16:04.45519	1	0d117ba3-e599-4eb8-99d7-846a274098e2	8	cake	2
82	adminuser	2024-02-21 19:16:05.175649	\N	2024-02-21 19:16:05.175649	1	0d117ba3-e599-4eb8-99d7-846a274098e2	8	cake	2
83	adminuser	2024-02-21 19:16:09.785751	\N	2024-02-21 19:16:09.785751	1	0d117ba3-e599-4eb8-99d7-846a274098e2	9	mouse	2
84	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	1	0d117ba3-e599-4eb8-99d7-846a274098e2	9	mouse	2
85	adminuser	2024-02-21 19:16:16.374994	\N	2024-02-21 19:16:16.374994	1	0d117ba3-e599-4eb8-99d7-846a274098e2	9	life	2
86	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	9	mouse	2
87	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	9	mouse	2
88	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	10	mouse	2
89	adminuser	2024-02-21 19:11:54.801901	\N	2024-02-21 19:11:54.801901	1	0d117ba3-e599-4eb8-99d7-846a274098e2	10	10	2
90	adminuser	2024-02-21 19:15:56.608428	\N	2024-02-21 19:15:56.608428	1	0d117ba3-e599-4eb8-99d7-846a274098e2	10	20	2
91	adminuser	2024-02-21 19:16:01.616608	\N	2024-02-21 19:16:01.616608	1	0d117ba3-e599-4eb8-99d7-846a274098e2	10	cake	4
97	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	11	mouse	5
98	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	11	mouse	5
99	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	11	mouse	5
100	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	11	mouse	5
101	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	11	mouse	5
102	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	11	mouse	5
103	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	11	mouse	5
104	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	2	0d117ba3-e599-4eb8-99d7-846a274098e2	11	mouse	5
105	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	11	mouse	5
106	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	12	mouse	5
107	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	12	mouse	5
108	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	12	mouse	5
109	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	12	mouse	5
110	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	12	mouse	5
111	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	12	mouse	5
112	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	3	0d117ba3-e599-4eb8-99d7-846a274098e2	12	mouse	5
92	adminuser	2024-02-21 19:16:04.45519	\N	2024-02-21 19:16:04.45519	1	0d117ba3-e599-4eb8-99d7-846a274098e2	10	cake	4
93	adminuser	2024-02-21 19:16:05.175649	\N	2024-02-21 19:16:05.175649	1	0d117ba3-e599-4eb8-99d7-846a274098e2	11	cake	4
94	adminuser	2024-02-21 19:16:09.785751	\N	2024-02-21 19:16:09.785751	1	0d117ba3-e599-4eb8-99d7-846a274098e2	11	mouse	4
95	adminuser	2024-02-21 19:16:10.480521	\N	2024-02-21 19:16:10.480521	1	0d117ba3-e599-4eb8-99d7-846a274098e2	11	mouse	4
96	adminuser	2024-02-21 19:16:16.374994	\N	2024-02-21 19:16:16.374994	1	0d117ba3-e599-4eb8-99d7-846a274098e2	11	life	4
\.


--
-- TOC entry 3318 (class 0 OID 584589)
-- Dependencies: 212
-- Data for Name: menu_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menu_item (id, created_by, created_date, last_modified_by, last_modified_date, icon, is_layout, is_title, label, link, parent_id, roles) FROM stdin;
7	admin	2024-02-21 21:08:48.963103	adminuser	2024-02-22 00:07:06.463291	\N	f	t	Services	\N	\N	PROJECT_MANAGER,DEV
8	admin	2024-02-21 21:08:48.963103	adminuser	2024-02-22 00:07:06.463291	bx-wrench	f	f	Service 1	/services/1	7	\N
9	admin	2024-02-21 21:08:48.963103	adminuser	2024-02-22 00:07:08.704054	bx-wrench	f	f	Service 2	/services/2	\N	PROJECT_MANAGER,DEV
1	admin	2024-02-21 21:08:48.963103	adminuser	2024-02-22 00:06:48.079542	\N	f	t	Main Menu	\N	\N	DEV, PROJECT_MANAGER
5	admin	2024-02-21 21:08:48.963103	adminuser	2024-02-22 00:06:39.935829	bx-box	f	f	Projects	/projects	\N	PROJECT_MANAGER
2	admin	2024-02-21 21:08:48.963103	adminuser	2024-02-22 00:11:49.773099	\N	f	f	Tasks	/tasks	\N	PROJECT_MANAGER
3	admin	2024-02-21 21:08:48.963103	adminuser	2024-02-22 00:07:07.508429	\N	f	f	Team Members	/team-members	\N	PROJECT_MANAGER
4	admin	2024-02-21 21:08:48.963103	adminuser	2024-02-22 00:06:56.612045	\N	f	t	Reports	/reports	\N	PROJECT_MANAGER
6	admin	2024-02-21 21:08:48.963103	adminuser	2024-02-22 00:07:02.921979	bx-box	f	f	Settings	/products/2	\N	PROJECT_MANAGER
\.


--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 209
-- Name: estimation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estimation_id_seq', 112, true);


--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 211
-- Name: menu_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menu_item_id_seq', 1, false);


--
-- TOC entry 3172 (class 2606 OID 584557)
-- Name: estimation estimation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estimation
    ADD CONSTRAINT estimation_pkey PRIMARY KEY (id);


--
-- TOC entry 3174 (class 2606 OID 584596)
-- Name: menu_item menu_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_item
    ADD CONSTRAINT menu_item_pkey PRIMARY KEY (id);


--
-- TOC entry 3175 (class 2606 OID 584597)
-- Name: menu_item fk45rgyxcgj28yvjgceagr9fhw4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menu_item
    ADD CONSTRAINT fk45rgyxcgj28yvjgceagr9fhw4 FOREIGN KEY (parent_id) REFERENCES public.menu_item(id);


-- Completed on 2024-02-26 22:26:51

--
-- PostgreSQL database dump complete
--

