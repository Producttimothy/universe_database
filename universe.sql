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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_mio_years numeric,
    real_galaxy boolean,
    size numeric NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    age numeric,
    size numeric NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_mio_years integer NOT NULL,
    name_resistens text,
    threat_for_earth boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: residents; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.residents (
    residents_id integer NOT NULL,
    name character varying NOT NULL,
    special_featuure text,
    size numeric NOT NULL,
    new_id integer NOT NULL
);


ALTER TABLE public.residents OWNER TO freecodecamp;

--
-- Name: residents_new_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.residents_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.residents_new_id_seq OWNER TO freecodecamp;

--
-- Name: residents_new_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.residents_new_id_seq OWNED BY public.residents.new_id;


--
-- Name: residents_residents_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.residents_residents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.residents_residents_id_seq OWNER TO freecodecamp;

--
-- Name: residents_residents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.residents_residents_id_seq OWNED BY public.residents.residents_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    size integer,
    threat_for_earth boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: residents residents_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.residents ALTER COLUMN residents_id SET DEFAULT nextval('public.residents_residents_id_seq'::regclass);


--
-- Name: residents new_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.residents ALTER COLUMN new_id SET DEFAULT nextval('public.residents_new_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Urus', 10, true, 10);
INSERT INTO public.galaxy VALUES (2, 'Delta', 12, true, 12);
INSERT INTO public.galaxy VALUES (3, 'Alpha', 13, true, 13);
INSERT INTO public.galaxy VALUES (4, 'Flora', 15, true, 15);
INSERT INTO public.galaxy VALUES (5, 'Filli', 18, false, 18);
INSERT INTO public.galaxy VALUES (6, 'doggo', 20, true, 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Pikachu', 10, 10, 2);
INSERT INTO public.moon VALUES (2, 'Glurak', 12, 12, 3);
INSERT INTO public.moon VALUES (6, 'Vulpix', 102, 102, 3);
INSERT INTO public.moon VALUES (7, 'Turtok', 13, 13, 3);
INSERT INTO public.moon VALUES (8, 'Zaptos', 14, 14, 2);
INSERT INTO public.moon VALUES (9, 'Arctos', 15, 15, 1);
INSERT INTO public.moon VALUES (10, 'Lavados', 18, 18, 2);
INSERT INTO public.moon VALUES (11, 'Glumanda', 23, 23, 5);
INSERT INTO public.moon VALUES (12, 'Glutexo', 24, 24, 8);
INSERT INTO public.moon VALUES (13, 'Bisasam', 25, 25, 4);
INSERT INTO public.moon VALUES (14, 'Bisaflor', 26, 26, 3);
INSERT INTO public.moon VALUES (15, 'Bisaknosp', 28, 28, 5);
INSERT INTO public.moon VALUES (16, 'Sillok', 29, 29, 9);
INSERT INTO public.moon VALUES (17, 'Reichu', 30, 30, 1);
INSERT INTO public.moon VALUES (18, 'Evoli', 32, 32, 3);
INSERT INTO public.moon VALUES (19, 'Nachtara', 33, 33, 1);
INSERT INTO public.moon VALUES (20, 'Flamara', 35, 35, 2);
INSERT INTO public.moon VALUES (21, 'Abra', 38, 38, 4);
INSERT INTO public.moon VALUES (22, 'Kadabra', 40, 40, 4);
INSERT INTO public.moon VALUES (23, 'Simsala', 44, 44, 4);
INSERT INTO public.moon VALUES (24, 'Flortensa', 45, 45, 3);
INSERT INTO public.moon VALUES (25, 'Ponita', 48, 48, 1);
INSERT INTO public.moon VALUES (26, 'Garados', 99, 99, 3);
INSERT INTO public.moon VALUES (27, 'Zubat', 100, 100, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Python', 10, 'Human', false, 1);
INSERT INTO public.planet VALUES (2, 'JAVA', 120, 'Alien', false, 2);
INSERT INTO public.planet VALUES (3, 'HTML', 13, 'Pokemon', false, 2);
INSERT INTO public.planet VALUES (4, 'C++', 15, 'Harry Potter', true, 5);
INSERT INTO public.planet VALUES (5, 'C', 18, 'Programming Language', false, 2);
INSERT INTO public.planet VALUES (6, 'JS', 20, 'Human', false, 6);
INSERT INTO public.planet VALUES (7, 'React', 23, 'Alien', false, 5);
INSERT INTO public.planet VALUES (8, 'R', 24, 'Alien', false, 3);
INSERT INTO public.planet VALUES (9, 'Bash', 25, 'Human', true, 4);
INSERT INTO public.planet VALUES (10, 'SQL', 32, 'Pokemon', false, 2);
INSERT INTO public.planet VALUES (11, 'PHP', 45, 'PL', false, 3);
INSERT INTO public.planet VALUES (12, 'Note', 54, 'Alien', true, 3);
INSERT INTO public.planet VALUES (13, 'flutter', 55, 'Harry Potter', false, 3);
INSERT INTO public.planet VALUES (14, 'go', 67, 'Pokemon', true, 4);
INSERT INTO public.planet VALUES (15, 'VBA', 77, 'PL', true, 1);


--
-- Data for Name: residents; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.residents VALUES (1, 'Human', 'Fire', 10, 1);
INSERT INTO public.residents VALUES (2, 'Alien', 'Brain', 210, 2);
INSERT INTO public.residents VALUES (3, 'Pokemon', 'Attac', 29, 3);
INSERT INTO public.residents VALUES (4, 'Harry Potter', 'Magic', 5, 4);
INSERT INTO public.residents VALUES (5, 'Programming Language', 'Magic ++', 4, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Harry', 12, false, 2);
INSERT INTO public.star VALUES (3, 'Ganadalf', 13, true, 3);
INSERT INTO public.star VALUES (4, 'Ron', 15, false, 6);
INSERT INTO public.star VALUES (5, 'Dumbledor', 18, true, 3);
INSERT INTO public.star VALUES (6, 'Lupus', 20, true, 1);
INSERT INTO public.star VALUES (1, 'Tetanus', 10, false, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: residents_new_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.residents_new_id_seq', 5, true);


--
-- Name: residents_residents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.residents_residents_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_size_key UNIQUE (size);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_key UNIQUE (size);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: residents residents_new_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.residents
    ADD CONSTRAINT residents_new_id_key UNIQUE (new_id);


--
-- Name: residents residents_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.residents
    ADD CONSTRAINT residents_pkey PRIMARY KEY (residents_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

