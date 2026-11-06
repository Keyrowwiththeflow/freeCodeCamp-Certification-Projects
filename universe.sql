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
-- Name: astronomer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomer (
    astronomer_name character varying(100),
    planet_name character varying(80) NOT NULL,
    astronomer_id integer NOT NULL,
    age integer,
    name character varying(30)
);


ALTER TABLE public.astronomer OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomer_astronomer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomer_astronomer_id_seq OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomer_astronomer_id_seq OWNED BY public.astronomer.astronomer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying(80) NOT NULL,
    galaxy_types text NOT NULL,
    age_in_billions_of_years numeric,
    description text NOT NULL,
    name character varying(30)
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
    moon_name character varying(80),
    planet_name character varying(80) NOT NULL,
    is_spherical boolean,
    is_main_moon boolean,
    distance_from_earth_in_millions_of_miles integer,
    moon_id integer NOT NULL,
    name character varying(30)
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
    planet_name character varying(80) NOT NULL,
    distance_from_sun_in_millions_of_miles numeric,
    planet_type character varying(80),
    star_name character varying(80),
    name character varying(30)
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(80),
    star_types character varying(80),
    age_in_billions_of_years numeric,
    description text NOT NULL,
    galaxy_name character varying(80),
    name character varying(30)
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
-- Name: astronomer astronomer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer ALTER COLUMN astronomer_id SET DEFAULT nextval('public.astronomer_astronomer_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astronomer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomer VALUES (NULL, 'Mercury', 1, NULL, NULL);
INSERT INTO public.astronomer VALUES (NULL, 'Venus', 2, NULL, NULL);
INSERT INTO public.astronomer VALUES (NULL, 'Mars', 3, NULL, NULL);
INSERT INTO public.astronomer VALUES (NULL, 'Jupiter', 4, NULL, NULL);
INSERT INTO public.astronomer VALUES (NULL, 'Saturn', 5, NULL, NULL);
INSERT INTO public.astronomer VALUES ('Herschel', 'Uranus', 6, 42, NULL);
INSERT INTO public.astronomer VALUES ('Galle and Le Verrier', 'Neptune', 7, 35, NULL);
INSERT INTO public.astronomer VALUES ('Tombaugh', 'Pluto', 8, 24, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Barred spiral galaxy', 11.5, 'The closest big galaxy to the Milky Way.
Set to collide with the Milky Way in 4.5 billion years.
This will result in a new galaxy: Milkdromeda.', NULL);
INSERT INTO public.galaxy VALUES (2, 'NGC 4622/Backward Galaxy', 'Spiral galaxy', NULL, 'Located in the Centaurus constellation.
Known as the "Backward Galaxy" due to its appearance representing a backward spiral motion.
Has a single inner trailing spiral arm.', NULL);
INSERT INTO public.galaxy VALUES (3, 'NGC 2537/Bear Paw Galaxy', 'Blue compact dwarf galaxy', 13, 'Located in the Lynx constellation.
Resembles the claw of a bear.
Discovered by William Herschel in 1778.', NULL);
INSERT INTO public.galaxy VALUES (4, 'NGC 4565/Needle Galaxy', 'Edge-on spiral galaxy', 13.6, 'Known for its famous slender appearance.
More luminous than the Andromeda galaxy.
Located in the Coma Berenices constellation.', NULL);
INSERT INTO public.galaxy VALUES (5, 'Wolf-Lundmark-Melotte', 'Barred irregular galaxy', 15, 'Credited to three astronomers: Max Wolf in 1909, Knut Lundmark and Philibert Jacques Melotte in 1926.
Formed very early into the history of the universe.
Located on the outer edges of the Local Group.', NULL);
INSERT INTO public.galaxy VALUES (6, 'Tadpole Galaxy', 'Disrupted barred spiral galaxy', 0.1, 'Resembles a tadpole.
Major event where it gained its tail happened 100 million years ago after merging with a smaller galaxy.
Located in the Draco constellation.', NULL);
INSERT INTO public.galaxy VALUES (7, 'NGC 6240/Starfish Galaxy', 'Ultraluminous infrared galaxy', 0.03, 'Resembles a starfish.
The result of an ongoing merge of 3 small galaxies starting 30 million years ago.
Located in the Ophiuchus constellation.', NULL);
INSERT INTO public.galaxy VALUES (8, 'NGC 4631/Whale Galaxy', 'Barred spiral galaxy', 13.27, 'Resembles a whale or herring.
Contains a central starburst.
Located in the Canes Venatici constellation.', NULL);
INSERT INTO public.galaxy VALUES (9, 'NGC 5194/Whirlpool Galaxy', 'Interacting grand-design spiral galaxy', 0.4, 'Has a Seyfert 2 active galactic nucleus.
Interacting with NGC 5195.
Located in the Canes Venatici constellation.', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, 'Mercury', NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('NULL', 'Venus', NULL, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES ('Phobos', 'Mars', false, true, 33, 3, NULL);
INSERT INTO public.moon VALUES ('Deimos', 'Mars', false, false, 33, 4, NULL);
INSERT INTO public.moon VALUES ('Io', 'Jupiter', false, false, 365, 5, NULL);
INSERT INTO public.moon VALUES ('Europa', 'Jupiter', true, false, 390, 6, NULL);
INSERT INTO public.moon VALUES ('Ganymede', 'Jupiter', true, true, 390, 7, NULL);
INSERT INTO public.moon VALUES ('Callisto', 'Jupiter', true, false, 390, 8, NULL);
INSERT INTO public.moon VALUES ('Titan', 'Saturn', true, true, 750, 9, NULL);
INSERT INTO public.moon VALUES ('Enceladus', 'Saturn', true, false, 790, 10, NULL);
INSERT INTO public.moon VALUES ('Mimas', 'Saturn', false, false, 790, 11, NULL);
INSERT INTO public.moon VALUES ('Iapetus', 'Saturn', false, false, 745, 12, NULL);
INSERT INTO public.moon VALUES ('Hyperion', 'Saturn', false, false, 750, 13, NULL);
INSERT INTO public.moon VALUES ('Phoebe', 'Saturn', true, false, 746, 14, NULL);
INSERT INTO public.moon VALUES ('The Moon', 'Earth', true, true, 0, 15, NULL);
INSERT INTO public.moon VALUES ('Titania', 'Uranus', true, true, 1800, 16, NULL);
INSERT INTO public.moon VALUES ('Oberon', 'Uranus', true, true, 1800, 17, NULL);
INSERT INTO public.moon VALUES ('Umbriel', 'Uranus', true, true, 1800, 18, NULL);
INSERT INTO public.moon VALUES ('Ariel', 'Uranus', true, true, 1800, 19, NULL);
INSERT INTO public.moon VALUES ('Miranda', 'Uranus', true, true, 1692, 20, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 36, 'Terrestrial', 'M31-V1', NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 67, 'Terrestrial', 'Alpheratz', NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 93, 'Terrestrial', 'AT 2017be', NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 142, 'Terrestrial', 'SN 2005cs', NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 484, 'Gas giant', 'Rasalhague', NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 886, 'Gas giant', 'SN 2007cu', NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 1800, 'Ice giant', 'SN 2005cs', NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 2800, 'Ice giant', 'Alpheratz', NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 3700, 'Dwarf', 'Rasalhague', NULL);
INSERT INTO public.planet VALUES (10, 'Eris', 8950, 'Dwarf', 'M31-V1', NULL);
INSERT INTO public.planet VALUES (11, 'Ceres', 257, 'Dwarf', 'SN 2007cu', NULL);
INSERT INTO public.planet VALUES (12, 'Makemake', 4300, 'Dwarf', 'AT 2017be', NULL);
INSERT INTO public.planet VALUES (13, 'Haumea', 4000, 'Dwarf', 'SN 2005cs', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'M31-V1', 'Cepheid variable', 0.9, 'Changed the way astronomers viewed the cosmos.
This star proved the existence of galaxies outside of the Milky Way.
2.5 million light years away.
Caused the realization that the universe is infinitely larger than previously thought.', 'Andromeda Galaxy', NULL);
INSERT INTO public.star VALUES (2, 'AT 2017be', 'Super-asymptotic giant branch', 0.025, 'This supernova got its name after exploding in 2017.
Belongs to a rare cosmic class known as Intermediate-Luminosity Red Transients.
A premier candidate for a weak electron-capture supernova explosion originating from a super-AGB star.', 'NGC 2537/Bear Paw Galaxy', NULL);
INSERT INTO public.star VALUES (3, 'SN 2007cu', 'Type II Supernova', NULL, 'Its progenitor star was most likely a red supergiant before it exploded.
It is one of two supernovae explosions in the Tadpole Galaxy, with the second being SN2008dq.', 'Tadpole Galaxy', NULL);
INSERT INTO public.star VALUES (4, 'Rasalhague', 'A-Type', 0.84, 'The brightest star in the Ophiuchus constellation.
Binary star system.
Located about 48 to 49 light years away from Earth.', 'NGC 6240/Starfish Galaxy', NULL);
INSERT INTO public.star VALUES (5, 'SN 2005cs', 'Type II-P core-collapse supernova', 0.01, 'One of the very few core-collapse supernovae where could directly identify and study before explosion.
Very faint luminosity.
Low-mass red supergiant.', 'NGC 5194/Whirlpool Galaxy', NULL);
INSERT INTO public.star VALUES (6, 'Alpheratz', 'Binary star system', 0.13, 'The brightest star system in the Andromeda Galaxy.
Often used as a guide post to find the Andromeda Galaxy.
About 97 light years from Earth.', 'Andromeda Galaxy', NULL);


--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomer_astronomer_id_seq', 9, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronomer astronomer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_pkey PRIMARY KEY (astronomer_id);


--
-- Name: astronomer astronomer_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_planet_name_key UNIQUE (planet_name);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (moon_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (planet_name);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (star_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: astronomer astronomer_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: moon moon_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet planet_star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_name_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star star_galaxy_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_name_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

