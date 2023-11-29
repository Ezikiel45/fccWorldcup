--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name text NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (75, 2018, 'Final', 481, 4, 2, 480);
INSERT INTO public.games VALUES (76, 2018, 'Third Place', 483, 2, 0, 482);
INSERT INTO public.games VALUES (77, 2018, 'Semi-Final', 483, 2, 1, 481);
INSERT INTO public.games VALUES (78, 2018, 'Semi-Final', 482, 1, 0, 480);
INSERT INTO public.games VALUES (79, 2018, 'Quarter-Final', 486, 3, 2, 481);
INSERT INTO public.games VALUES (80, 2018, 'Quarter-Final', 487, 2, 0, 483);
INSERT INTO public.games VALUES (81, 2018, 'Quarter-Final', 488, 2, 1, 482);
INSERT INTO public.games VALUES (82, 2018, 'Quarter-Final', 489, 2, 0, 480);
INSERT INTO public.games VALUES (83, 2018, 'Eighth-Final', 490, 2, 1, 483);
INSERT INTO public.games VALUES (84, 2018, 'Eighth-Final', 491, 1, 0, 487);
INSERT INTO public.games VALUES (85, 2018, 'Eighth-Final', 492, 3, 2, 482);
INSERT INTO public.games VALUES (86, 2018, 'Eighth-Final', 493, 2, 0, 488);
INSERT INTO public.games VALUES (87, 2018, 'Eighth-Final', 494, 2, 1, 481);
INSERT INTO public.games VALUES (88, 2018, 'Eighth-Final', 495, 2, 1, 486);
INSERT INTO public.games VALUES (89, 2018, 'Eighth-Final', 496, 2, 1, 489);
INSERT INTO public.games VALUES (90, 2018, 'Eighth-Final', 497, 4, 3, 480);
INSERT INTO public.games VALUES (91, 2014, 'Final', 497, 1, 0, 498);
INSERT INTO public.games VALUES (92, 2014, 'Third Place', 488, 3, 0, 500);
INSERT INTO public.games VALUES (93, 2014, 'Semi-Final', 500, 1, 0, 497);
INSERT INTO public.games VALUES (94, 2014, 'Semi-Final', 488, 7, 1, 498);
INSERT INTO public.games VALUES (95, 2014, 'Quarter-Final', 504, 1, 0, 500);
INSERT INTO public.games VALUES (96, 2014, 'Quarter-Final', 482, 1, 0, 497);
INSERT INTO public.games VALUES (97, 2014, 'Quarter-Final', 490, 2, 1, 488);
INSERT INTO public.games VALUES (98, 2014, 'Quarter-Final', 480, 1, 0, 498);
INSERT INTO public.games VALUES (99, 2014, 'Eighth-Final', 508, 2, 1, 488);
INSERT INTO public.games VALUES (100, 2014, 'Eighth-Final', 489, 2, 0, 490);
INSERT INTO public.games VALUES (101, 2014, 'Eighth-Final', 510, 2, 0, 480);
INSERT INTO public.games VALUES (102, 2014, 'Eighth-Final', 511, 2, 1, 498);
INSERT INTO public.games VALUES (103, 2014, 'Eighth-Final', 493, 2, 1, 500);
INSERT INTO public.games VALUES (104, 2014, 'Eighth-Final', 513, 2, 1, 504);
INSERT INTO public.games VALUES (105, 2014, 'Eighth-Final', 491, 1, 0, 497);
INSERT INTO public.games VALUES (106, 2014, 'Eighth-Final', 515, 2, 1, 482);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 480);
INSERT INTO public.teams VALUES ('Croatia', 481);
INSERT INTO public.teams VALUES ('Belgium', 482);
INSERT INTO public.teams VALUES ('England', 483);
INSERT INTO public.teams VALUES ('Russia', 486);
INSERT INTO public.teams VALUES ('Sweden', 487);
INSERT INTO public.teams VALUES ('Brazil', 488);
INSERT INTO public.teams VALUES ('Uruguay', 489);
INSERT INTO public.teams VALUES ('Colombia', 490);
INSERT INTO public.teams VALUES ('Switzerland', 491);
INSERT INTO public.teams VALUES ('Japan', 492);
INSERT INTO public.teams VALUES ('Mexico', 493);
INSERT INTO public.teams VALUES ('Denmark', 494);
INSERT INTO public.teams VALUES ('Spain', 495);
INSERT INTO public.teams VALUES ('Portugal', 496);
INSERT INTO public.teams VALUES ('Argentina', 497);
INSERT INTO public.teams VALUES ('Germany', 498);
INSERT INTO public.teams VALUES ('Netherlands', 500);
INSERT INTO public.teams VALUES ('Costa Rica', 504);
INSERT INTO public.teams VALUES ('Chile', 508);
INSERT INTO public.teams VALUES ('Nigeria', 510);
INSERT INTO public.teams VALUES ('Algeria', 511);
INSERT INTO public.teams VALUES ('Greece', 513);
INSERT INTO public.teams VALUES ('United States', 515);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 106, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 515, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_oppenent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_oppenent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

