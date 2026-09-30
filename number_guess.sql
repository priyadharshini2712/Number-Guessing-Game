--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (3, 'user_1790750725665', 2, 9);
INSERT INTO public.users VALUES (2, 'user_1790750725666', 5, 147);
INSERT INTO public.users VALUES (6, 'user_1790750953907', 2, 370);
INSERT INTO public.users VALUES (5, 'user_1790750953908', 5, 102);
INSERT INTO public.users VALUES (8, 'user_1790752093686', 2, 106);
INSERT INTO public.users VALUES (7, 'user_1790752093687', 5, 104);
INSERT INTO public.users VALUES (10, 'user_1790752102949', 2, 298);
INSERT INTO public.users VALUES (9, 'user_1790752102950', 5, 336);
INSERT INTO public.users VALUES (12, 'user_1790752115055', 2, 259);
INSERT INTO public.users VALUES (11, 'user_1790752115056', 5, 463);
INSERT INTO public.users VALUES (14, 'user_1790752592622', 2, 36);
INSERT INTO public.users VALUES (13, 'user_1790752592623', 5, 32);
INSERT INTO public.users VALUES (16, 'user_1790752694637', 2, 200);
INSERT INTO public.users VALUES (15, 'user_1790752694638', 5, 161);
INSERT INTO public.users VALUES (17, 'testuser', 5, 3);
INSERT INTO public.users VALUES (19, 'user_1790755084087', 2, 150);
INSERT INTO public.users VALUES (18, 'user_1790755084088', 5, 76);
INSERT INTO public.users VALUES (21, 'user_1790755333794', 2, 171);
INSERT INTO public.users VALUES (20, 'user_1790755333795', 5, 103);
INSERT INTO public.users VALUES (23, 'user_1790755342964', 2, 518);
INSERT INTO public.users VALUES (22, 'user_1790755342965', 5, 24);
INSERT INTO public.users VALUES (25, 'user_1790755600205', 2, 362);
INSERT INTO public.users VALUES (24, 'user_1790755600206', 5, 190);
INSERT INTO public.users VALUES (26, 'priya', 5, 3);
INSERT INTO public.users VALUES (28, 'user_1790755764842', 2, 2);
INSERT INTO public.users VALUES (27, 'user_1790755764843', 5, 266);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 28, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

