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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    galaxy_types character varying(30),
    age_in_millions_of_years integer
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
-- Name: galaxy_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_info (
    galaxy_info_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_details text
);


ALTER TABLE public.galaxy_info OWNER TO freecodecamp;

--
-- Name: galaxy_info_galaxy_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_info_galaxy_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_info_galaxy_info_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_info_galaxy_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_info_galaxy_info_id_seq OWNED BY public.galaxy_info.galaxy_info_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    is_spherical boolean,
    description text,
    planet_types character varying(30),
    distance_from_earth_in_au integer,
    diameter numeric
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    star_types character varying(30),
    description text,
    age_in_millions_of_years integer
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
-- Name: galaxy_info galaxy_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info ALTER COLUMN galaxy_info_id SET DEFAULT nextval('public.galaxy_info_galaxy_info_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 'Spiral galaxy containing the Solar System', 'Spiral', 13600);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 'Nearest spiral galaxy to the Milky Way', 'Spiral', 10000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 'Small spiral galaxy in the Local Group', 'Spiral', 12000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', false, 'Galaxy with a bright nucleus and large central bulge', 'Elliptical', 9000);
INSERT INTO public.galaxy VALUES (5, 'Whirpool', false, 'Interacting grand-desing spiral galaxy', 'Spiral', 11000);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', false, 'Ring-shaped galaxy formed by a collision', 'Ring', 8000);


--
-- Data for Name: galaxy_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_info VALUES (1, 'Milky Way', 'Home galaxy containing billions of stars and planetary systems');
INSERT INTO public.galaxy_info VALUES (2, 'Andromeda', 'Nearest major galaxy expected to collide with the Milky Way');
INSERT INTO public.galaxy_info VALUES (3, 'Sombrero', 'Galaxy with a bright nucleus and a prominent dust ring');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 'Natural satellite of Earth', true, 4500);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 'Small irregular moon of Mars', false, 4600);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'Smaller moon of Mars', false, 4600);
INSERT INTO public.moon VALUES (4, 'Xeron-I', 3, 'Rocky moon orbiting Xeron', true, 3000);
INSERT INTO public.moon VALUES (5, 'Xeron-II', 3, 'Icy moon orbiting Xeron', true, 2800);
INSERT INTO public.moon VALUES (6, 'Xeron-B1', 4, 'Dense moon with thick crust', true, 2500);
INSERT INTO public.moon VALUES (7, 'Xeron-B2', 4, 'Volcanically active moon', true, 2400);
INSERT INTO public.moon VALUES (8, 'Kepler-9b-I', 5, 'Large gas giant moon', true, 4000);
INSERT INTO public.moon VALUES (9, 'Kepler-9b-II', 5, 'Icy outer moon', true, 3900);
INSERT INTO public.moon VALUES (10, 'Kepler-9b-III', 5, 'Small captured moon', false, 3800);
INSERT INTO public.moon VALUES (11, 'Kepler-9c-I', 6, 'Frozen moon far from star', true, 4200);
INSERT INTO public.moon VALUES (12, 'Helios-A', 7, 'Molten surface moon', true, 2000);
INSERT INTO public.moon VALUES (13, 'Helios-B', 7, 'Tidally locked rocky moon', true, 2100);
INSERT INTO public.moon VALUES (14, 'Helios-II-A', 8, 'Cold barren moon', true, 5000);
INSERT INTO public.moon VALUES (15, 'Aqua-Minor', 9, 'Small icy moon', true, 3000);
INSERT INTO public.moon VALUES (16, 'Aqua-Major', 9, 'Large ocean moon', true, 3200);
INSERT INTO public.moon VALUES (17, 'Aqua-II-I', 10, 'Frozen satellite', true, 3500);
INSERT INTO public.moon VALUES (18, 'Vulcan-I', 11, 'Highly volcanic moon', true, 1800);
INSERT INTO public.moon VALUES (19, 'Vulcan-X-I', 12, 'Metal-rich moon', true, 2600);
INSERT INTO public.moon VALUES (20, 'Vulcan-X-II', 12, 'Captured irregular moon', false, 2700);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 'Rocky planet with liquid water and life', 'Terrestrial', 1, 12742);
INSERT INTO public.planet VALUES (2, 'Mars', 1, true, 'Cold desert planet with thin atmosphere', 'Terrestrial', 2, 6779);
INSERT INTO public.planet VALUES (3, 'Xeron', 2, true, 'Rocky exoplanet orbiting Alpha And', 'Rocky', 120, 14000);
INSERT INTO public.planet VALUES (4, 'Xeron-B', 2, true, 'Gas-rich planet with dense atmosphere', 'Gas Giant', 125, 90000);
INSERT INTO public.planet VALUES (5, 'Kepler-9b', 3, true, 'Gas giant with multiple moons', 'Gas Giant', 210, 85000);
INSERT INTO public.planet VALUES (6, 'Kepler-9c', 3, true, 'Icy planet far from its star', 'Ice Giant', 215, 50000);
INSERT INTO public.planet VALUES (7, 'Helios', 4, true, 'Extremely hot planet close to its star', 'Lava', 300, 15000);
INSERT INTO public.planet VALUES (8, 'Helios-II', 4, true, 'Barren rocky planet', 'Rocky', 305, 13000);
INSERT INTO public.planet VALUES (9, 'Aqua', 5, true, 'Ocean-covered planet', 'Ocean', 400, 16000);
INSERT INTO public.planet VALUES (10, 'Aqua-II', 5, true, 'Frozen ocean world', 'Ice', 405, 15500);
INSERT INTO public.planet VALUES (11, 'Vulcan', 6, true, 'Volcanically active planet', 'Lava', 500, 14000);
INSERT INTO public.planet VALUES (12, 'Vulcan-X', 6, true, 'Dense metallic planet', 'Metallic', 510, 14500);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-Type', 'Yellow dwarf star at the center of the Solar System', 4600);
INSERT INTO public.star VALUES (2, 'Alpha And', 2, 'A-Type', 'Bright star located in the Andromeda galaxy', 600);
INSERT INTO public.star VALUES (3, 'T-Prime', 3, 'Red dwarf', 'Low-mass and cool star with long lifespan', 9000);
INSERT INTO public.star VALUES (4, 'Sigma-9', 4, 'White dwarf', 'Dense stellar remmant with low luminosity', 12000);
INSERT INTO public.star VALUES (5, 'Vega-X', 5, 'Blue giant', 'Massive hot star emitting intense radiation', 50);
INSERT INTO public.star VALUES (6, 'Helios-A', 6, 'Binary system', 'Binary star system formed after a galactic collision', 3000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_info_galaxy_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_info_galaxy_info_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy_info galaxy_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info
    ADD CONSTRAINT galaxy_info_name_key UNIQUE (name);


--
-- Name: galaxy_info galaxy_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_info
    ADD CONSTRAINT galaxy_info_pkey PRIMARY KEY (galaxy_info_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

