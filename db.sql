--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2024-02-26 22:43:25

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

INSERT INTO public.estimation VALUES (16, 'adminuser', '2024-02-21 19:11:54.801901', NULL, '2024-02-21 19:11:54.801901', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, '10', 1);
INSERT INTO public.estimation VALUES (17, 'adminuser', '2024-02-21 19:15:56.608428', NULL, '2024-02-21 19:15:56.608428', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, '20', 1);
INSERT INTO public.estimation VALUES (18, 'adminuser', '2024-02-21 19:16:01.616608', NULL, '2024-02-21 19:16:01.616608', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, 'cake', 1);
INSERT INTO public.estimation VALUES (19, 'adminuser', '2024-02-21 19:16:04.45519', NULL, '2024-02-21 19:16:04.45519', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, 'cake', 1);
INSERT INTO public.estimation VALUES (20, 'adminuser', '2024-02-21 19:16:05.175649', NULL, '2024-02-21 19:16:05.175649', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, 'cake', 1);
INSERT INTO public.estimation VALUES (21, 'adminuser', '2024-02-21 19:16:09.785751', NULL, '2024-02-21 19:16:09.785751', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 2, 'mouse', 1);
INSERT INTO public.estimation VALUES (22, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 2, 'mouse', 1);
INSERT INTO public.estimation VALUES (23, 'adminuser', '2024-02-21 19:16:16.374994', NULL, '2024-02-21 19:16:16.374994', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 2, 'life', 1);
INSERT INTO public.estimation VALUES (24, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 1);
INSERT INTO public.estimation VALUES (25, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 1);
INSERT INTO public.estimation VALUES (26, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 1);
INSERT INTO public.estimation VALUES (27, 'adminuser', '2024-02-21 19:11:54.801901', NULL, '2024-02-21 19:11:54.801901', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, '10', 1);
INSERT INTO public.estimation VALUES (28, 'adminuser', '2024-02-21 19:15:56.608428', NULL, '2024-02-21 19:15:56.608428', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, '20', 1);
INSERT INTO public.estimation VALUES (29, 'adminuser', '2024-02-21 19:16:01.616608', NULL, '2024-02-21 19:16:01.616608', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, 'cake', 1);
INSERT INTO public.estimation VALUES (30, 'adminuser', '2024-02-21 19:16:04.45519', NULL, '2024-02-21 19:16:04.45519', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, 'cake', 1);
INSERT INTO public.estimation VALUES (31, 'adminuser', '2024-02-21 19:16:05.175649', NULL, '2024-02-21 19:16:05.175649', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, 'cake', 1);
INSERT INTO public.estimation VALUES (32, 'adminuser', '2024-02-21 19:16:09.785751', NULL, '2024-02-21 19:16:09.785751', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 2, 'mouse', 1);
INSERT INTO public.estimation VALUES (33, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 2, 'mouse', 1);
INSERT INTO public.estimation VALUES (34, 'adminuser', '2024-02-21 19:16:16.374994', NULL, '2024-02-21 19:16:16.374994', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 2, 'life', 1);
INSERT INTO public.estimation VALUES (35, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 1);
INSERT INTO public.estimation VALUES (36, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 1);
INSERT INTO public.estimation VALUES (37, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 1);
INSERT INTO public.estimation VALUES (38, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 1);
INSERT INTO public.estimation VALUES (39, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 1);
INSERT INTO public.estimation VALUES (40, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 1);
INSERT INTO public.estimation VALUES (41, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 1);
INSERT INTO public.estimation VALUES (42, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 1);
INSERT INTO public.estimation VALUES (43, 'adminuser', '2024-02-21 19:11:54.801901', NULL, '2024-02-21 19:11:54.801901', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, '10', 2);
INSERT INTO public.estimation VALUES (44, 'adminuser', '2024-02-21 19:15:56.608428', NULL, '2024-02-21 19:15:56.608428', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, '20', 2);
INSERT INTO public.estimation VALUES (45, 'adminuser', '2024-02-21 19:16:01.616608', NULL, '2024-02-21 19:16:01.616608', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, 'cake', 2);
INSERT INTO public.estimation VALUES (46, 'adminuser', '2024-02-21 19:16:04.45519', NULL, '2024-02-21 19:16:04.45519', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, 'cake', 2);
INSERT INTO public.estimation VALUES (47, 'adminuser', '2024-02-21 19:16:05.175649', NULL, '2024-02-21 19:16:05.175649', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, 'cake', 2);
INSERT INTO public.estimation VALUES (48, 'adminuser', '2024-02-21 19:16:09.785751', NULL, '2024-02-21 19:16:09.785751', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 2, 'mouse', 2);
INSERT INTO public.estimation VALUES (49, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 2, 'mouse', 2);
INSERT INTO public.estimation VALUES (50, 'adminuser', '2024-02-21 19:16:16.374994', NULL, '2024-02-21 19:16:16.374994', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 2, 'life', 2);
INSERT INTO public.estimation VALUES (51, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 2);
INSERT INTO public.estimation VALUES (52, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 2);
INSERT INTO public.estimation VALUES (53, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 3, 'mouse', 2);
INSERT INTO public.estimation VALUES (54, 'adminuser', '2024-02-21 19:11:54.801901', NULL, '2024-02-21 19:11:54.801901', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, '10', 2);
INSERT INTO public.estimation VALUES (55, 'adminuser', '2024-02-21 19:15:56.608428', NULL, '2024-02-21 19:15:56.608428', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, '20', 2);
INSERT INTO public.estimation VALUES (56, 'adminuser', '2024-02-21 19:16:01.616608', NULL, '2024-02-21 19:16:01.616608', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, 'cake', 2);
INSERT INTO public.estimation VALUES (57, 'adminuser', '2024-02-21 19:16:04.45519', NULL, '2024-02-21 19:16:04.45519', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, 'cake', 2);
INSERT INTO public.estimation VALUES (58, 'adminuser', '2024-02-21 19:16:05.175649', NULL, '2024-02-21 19:16:05.175649', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 7, 'cake', 2);
INSERT INTO public.estimation VALUES (59, 'adminuser', '2024-02-21 19:16:09.785751', NULL, '2024-02-21 19:16:09.785751', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 2, 'mouse', 2);
INSERT INTO public.estimation VALUES (60, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 2, 'mouse', 2);
INSERT INTO public.estimation VALUES (61, 'adminuser', '2024-02-21 19:16:16.374994', NULL, '2024-02-21 19:16:16.374994', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 2, 'life', 2);
INSERT INTO public.estimation VALUES (62, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 4, 'mouse', 2);
INSERT INTO public.estimation VALUES (63, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 4, 'mouse', 2);
INSERT INTO public.estimation VALUES (64, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 4, 'mouse', 2);
INSERT INTO public.estimation VALUES (65, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 4, 'mouse', 2);
INSERT INTO public.estimation VALUES (66, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 5, 'mouse', 2);
INSERT INTO public.estimation VALUES (67, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 5, 'mouse', 2);
INSERT INTO public.estimation VALUES (68, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 5, 'mouse', 2);
INSERT INTO public.estimation VALUES (69, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 5, 'mouse', 2);
INSERT INTO public.estimation VALUES (70, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 6, 'mouse', 2);
INSERT INTO public.estimation VALUES (71, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 6, 'mouse', 2);
INSERT INTO public.estimation VALUES (72, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 6, 'mouse', 2);
INSERT INTO public.estimation VALUES (73, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 6, 'mouse', 2);
INSERT INTO public.estimation VALUES (74, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 6, 'mouse', 2);
INSERT INTO public.estimation VALUES (75, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 6, 'mouse', 2);
INSERT INTO public.estimation VALUES (76, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 6, 'mouse', 2);
INSERT INTO public.estimation VALUES (77, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 6, 'mouse', 2);
INSERT INTO public.estimation VALUES (78, 'adminuser', '2024-02-21 19:11:54.801901', NULL, '2024-02-21 19:11:54.801901', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 8, '10', 2);
INSERT INTO public.estimation VALUES (79, 'adminuser', '2024-02-21 19:15:56.608428', NULL, '2024-02-21 19:15:56.608428', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 8, '20', 2);
INSERT INTO public.estimation VALUES (80, 'adminuser', '2024-02-21 19:16:01.616608', NULL, '2024-02-21 19:16:01.616608', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 8, 'cake', 2);
INSERT INTO public.estimation VALUES (81, 'adminuser', '2024-02-21 19:16:04.45519', NULL, '2024-02-21 19:16:04.45519', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 8, 'cake', 2);
INSERT INTO public.estimation VALUES (82, 'adminuser', '2024-02-21 19:16:05.175649', NULL, '2024-02-21 19:16:05.175649', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 8, 'cake', 2);
INSERT INTO public.estimation VALUES (83, 'adminuser', '2024-02-21 19:16:09.785751', NULL, '2024-02-21 19:16:09.785751', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 9, 'mouse', 2);
INSERT INTO public.estimation VALUES (84, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 9, 'mouse', 2);
INSERT INTO public.estimation VALUES (85, 'adminuser', '2024-02-21 19:16:16.374994', NULL, '2024-02-21 19:16:16.374994', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 9, 'life', 2);
INSERT INTO public.estimation VALUES (86, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 9, 'mouse', 2);
INSERT INTO public.estimation VALUES (87, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 9, 'mouse', 2);
INSERT INTO public.estimation VALUES (88, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 10, 'mouse', 2);
INSERT INTO public.estimation VALUES (89, 'adminuser', '2024-02-21 19:11:54.801901', NULL, '2024-02-21 19:11:54.801901', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 10, '10', 2);
INSERT INTO public.estimation VALUES (90, 'adminuser', '2024-02-21 19:15:56.608428', NULL, '2024-02-21 19:15:56.608428', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 10, '20', 2);
INSERT INTO public.estimation VALUES (91, 'adminuser', '2024-02-21 19:16:01.616608', NULL, '2024-02-21 19:16:01.616608', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 10, 'cake', 4);
INSERT INTO public.estimation VALUES (97, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 11, 'mouse', 5);
INSERT INTO public.estimation VALUES (98, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 11, 'mouse', 5);
INSERT INTO public.estimation VALUES (99, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 11, 'mouse', 5);
INSERT INTO public.estimation VALUES (100, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 11, 'mouse', 5);
INSERT INTO public.estimation VALUES (101, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 11, 'mouse', 5);
INSERT INTO public.estimation VALUES (102, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 11, 'mouse', 5);
INSERT INTO public.estimation VALUES (103, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 11, 'mouse', 5);
INSERT INTO public.estimation VALUES (104, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 2, '0d117ba3-e599-4eb8-99d7-846a274098e2', 11, 'mouse', 5);
INSERT INTO public.estimation VALUES (105, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 11, 'mouse', 5);
INSERT INTO public.estimation VALUES (106, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 12, 'mouse', 5);
INSERT INTO public.estimation VALUES (107, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 12, 'mouse', 5);
INSERT INTO public.estimation VALUES (108, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 12, 'mouse', 5);
INSERT INTO public.estimation VALUES (109, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 12, 'mouse', 5);
INSERT INTO public.estimation VALUES (110, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 12, 'mouse', 5);
INSERT INTO public.estimation VALUES (111, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 12, 'mouse', 5);
INSERT INTO public.estimation VALUES (112, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 3, '0d117ba3-e599-4eb8-99d7-846a274098e2', 12, 'mouse', 5);
INSERT INTO public.estimation VALUES (92, 'adminuser', '2024-02-21 19:16:04.45519', NULL, '2024-02-21 19:16:04.45519', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 10, 'cake', 4);
INSERT INTO public.estimation VALUES (93, 'adminuser', '2024-02-21 19:16:05.175649', NULL, '2024-02-21 19:16:05.175649', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 11, 'cake', 4);
INSERT INTO public.estimation VALUES (94, 'adminuser', '2024-02-21 19:16:09.785751', NULL, '2024-02-21 19:16:09.785751', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 11, 'mouse', 4);
INSERT INTO public.estimation VALUES (95, 'adminuser', '2024-02-21 19:16:10.480521', NULL, '2024-02-21 19:16:10.480521', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 11, 'mouse', 4);
INSERT INTO public.estimation VALUES (96, 'adminuser', '2024-02-21 19:16:16.374994', NULL, '2024-02-21 19:16:16.374994', 1, '0d117ba3-e599-4eb8-99d7-846a274098e2', 11, 'life', 4);


--
-- TOC entry 3318 (class 0 OID 584589)
-- Dependencies: 212
-- Data for Name: menu_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.menu_item VALUES (7, 'admin', '2024-02-21 21:08:48.963103', 'adminuser', '2024-02-22 00:07:06.463291', NULL, false, true, 'Services', NULL, NULL, 'PROJECT_MANAGER,DEV');
INSERT INTO public.menu_item VALUES (8, 'admin', '2024-02-21 21:08:48.963103', 'adminuser', '2024-02-22 00:07:06.463291', 'bx-wrench', false, false, 'Service 1', '/services/1', 7, NULL);
INSERT INTO public.menu_item VALUES (9, 'admin', '2024-02-21 21:08:48.963103', 'adminuser', '2024-02-22 00:07:08.704054', 'bx-wrench', false, false, 'Service 2', '/services/2', NULL, 'PROJECT_MANAGER,DEV');
INSERT INTO public.menu_item VALUES (1, 'admin', '2024-02-21 21:08:48.963103', 'adminuser', '2024-02-22 00:06:48.079542', NULL, false, true, 'Main Menu', NULL, NULL, 'DEV, PROJECT_MANAGER');
INSERT INTO public.menu_item VALUES (5, 'admin', '2024-02-21 21:08:48.963103', 'adminuser', '2024-02-22 00:06:39.935829', 'bx-box', false, false, 'Projects', '/projects', NULL, 'PROJECT_MANAGER');
INSERT INTO public.menu_item VALUES (2, 'admin', '2024-02-21 21:08:48.963103', 'adminuser', '2024-02-22 00:11:49.773099', NULL, false, false, 'Tasks', '/tasks', NULL, 'PROJECT_MANAGER');
INSERT INTO public.menu_item VALUES (3, 'admin', '2024-02-21 21:08:48.963103', 'adminuser', '2024-02-22 00:07:07.508429', NULL, false, false, 'Team Members', '/team-members', NULL, 'PROJECT_MANAGER');
INSERT INTO public.menu_item VALUES (4, 'admin', '2024-02-21 21:08:48.963103', 'adminuser', '2024-02-22 00:06:56.612045', NULL, false, true, 'Reports', '/reports', NULL, 'PROJECT_MANAGER');
INSERT INTO public.menu_item VALUES (6, 'admin', '2024-02-21 21:08:48.963103', 'adminuser', '2024-02-22 00:07:02.921979', 'bx-box', false, false, 'Settings', '/products/2', NULL, 'PROJECT_MANAGER');


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


-- Completed on 2024-02-26 22:43:26

--
-- PostgreSQL database dump complete
--

