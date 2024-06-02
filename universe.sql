--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    mass numeric(5,2) NOT NULL,
    event_horizon_radius integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_spiral boolean NOT NULL,
    distance_from_earth integer NOT NULL,
    description text NOT NULL
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
    name character varying(40) NOT NULL,
    year_discovered integer,
    planet_id integer NOT NULL,
    description text NOT NULL
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
    name character varying(40) NOT NULL,
    year_discovered integer NOT NULL,
    star_id integer NOT NULL,
    description text NOT NULL
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
    name character varying(40) NOT NULL,
    mass numeric(5,2) NOT NULL,
    has_planets boolean NOT NULL,
    description text NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 0, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', true, 2500000, 'The nearest major galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', true, 3000000, 'The third-largest galaxy in the Local Group');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', true, 23000000, 'A grand design spiral galaxy');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', false, 28000000, 'An unbarred spiral galaxy with a prominent central bulge');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 0, 3, 'Our Moon');
INSERT INTO public.moon VALUES (2, 'Phobos', 1877, 4, 'The larger and closer of the two moons of Mars');
INSERT INTO public.moon VALUES (3, 'Deimos', 1877, 4, 'The smaller and more distant of the two moons of Mars');
INSERT INTO public.moon VALUES (4, 'Io', 1610, 5, 'The innermost of the four Galilean moons of Jupiter');
INSERT INTO public.moon VALUES (5, 'Europa', 1610, 5, 'The smallest of the four Galilean moons of Jupiter');
INSERT INTO public.moon VALUES (6, 'Ganymede', 1610, 5, 'The largest moon in the Solar System');
INSERT INTO public.moon VALUES (7, 'Callisto', 1610, 5, 'The second-largest moon in the Solar System');
INSERT INTO public.moon VALUES (8, 'Titan', 1655, 6, 'The largest moon of Saturn');
INSERT INTO public.moon VALUES (9, 'Triton', 1846, 7, 'The largest natural satellite of Neptune');
INSERT INTO public.moon VALUES (10, 'Rhea', 1672, 5, 'The second-largest moon of Saturn');
INSERT INTO public.moon VALUES (11, 'Iapetus', 1671, 5, 'A moon of Saturn');
INSERT INTO public.moon VALUES (12, 'Dione', 1684, 5, 'A moon of Saturn');
INSERT INTO public.moon VALUES (13, 'Enceladus', 1789, 5, 'A moon of Saturn');
INSERT INTO public.moon VALUES (14, 'Mimas', 1789, 5, 'A moon of Saturn');
INSERT INTO public.moon VALUES (15, 'Hyperion', 1848, 5, 'A moon of Saturn');
INSERT INTO public.moon VALUES (16, 'Ariel', 1851, 7, 'A moon of Uranus');
INSERT INTO public.moon VALUES (17, 'Umbriel', 1851, 7, 'A moon of Uranus');
INSERT INTO public.moon VALUES (18, 'Titania', 1787, 7, 'The largest moon of Uranus');
INSERT INTO public.moon VALUES (19, 'Oberon', 1787, 7, 'The second-largest moon of Uranus');
INSERT INTO public.moon VALUES (20, 'Miranda', 1948, 7, 'A moon of Uranus');
INSERT INTO public.moon VALUES (21, 'Triton2', 1846, 8, 'The largest natural satellite of Neptune');
INSERT INTO public.moon VALUES (22, 'Nereid', 1949, 8, 'A moon of Neptune');
INSERT INTO public.moon VALUES (23, 'Proteus', 1989, 8, 'A moon of Neptune');
INSERT INTO public.moon VALUES (24, 'Larissa', 1981, 8, 'A moon of Neptune');
INSERT INTO public.moon VALUES (25, 'Galatea', 1989, 8, 'A moon of Neptune');
INSERT INTO public.moon VALUES (26, 'Despina', 1989, 8, 'A moon of Neptune');
INSERT INTO public.moon VALUES (27, 'Thalassa', 1989, 8, 'A moon of Neptune');
INSERT INTO public.moon VALUES (28, 'Naiad', 1989, 8, 'A moon of Neptune');
INSERT INTO public.moon VALUES (29, 'Charon', 1978, 9, 'The largest moon of Pluto');
INSERT INTO public.moon VALUES (30, 'Styx', 2012, 9, 'A moon of Pluto');
INSERT INTO public.moon VALUES (31, 'Nix', 2005, 9, 'A moon of Pluto');
INSERT INTO public.moon VALUES (32, 'Kerberos', 2011, 9, 'A moon of Pluto');
INSERT INTO public.moon VALUES (33, 'Hydra', 2005, 9, 'A moon of Pluto');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, 1, 'The smallest planet in the Solar System');
INSERT INTO public.planet VALUES (2, 'Venus', 0, 1, 'The second planet from the Sun');
INSERT INTO public.planet VALUES (3, 'Earth', 0, 1, 'Our home planet');
INSERT INTO public.planet VALUES (4, 'Mars', 0, 1, 'The fourth planet from the Sun');
INSERT INTO public.planet VALUES (5, 'Jupiter', 1610, 1, 'The largest planet in the Solar System');
INSERT INTO public.planet VALUES (6, 'Saturn', 1610, 1, 'The sixth planet from the Sun');
INSERT INTO public.planet VALUES (7, 'Uranus', 1781, 1, 'The seventh planet from the Sun');
INSERT INTO public.planet VALUES (8, 'Neptune', 1846, 1, 'The eighth planet from the Sun');
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 2016, 2, 'An exoplanet orbiting Proxima Centauri');
INSERT INTO public.planet VALUES (10, 'Rigel b', 1991, 3, 'A hot Jupiter exoplanet orbiting Rigel');
INSERT INTO public.planet VALUES (11, 'Betelgeuse b', 2009, 4, 'A massive exoplanet orbiting Betelgeuse');
INSERT INTO public.planet VALUES (12, 'Polaris Ab', 2006, 5, 'A massive exoplanet orbiting Polaris');
INSERT INTO public.planet VALUES (13, 'Vega b', 2006, 6, 'A massive exoplanet orbiting Vega');
INSERT INTO public.planet VALUES (14, 'Sirius B', 1862, 7, 'A white dwarf star orbiting Sirius');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1.00, true, 'Our home star', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 0.12, true, 'The closest star to the Sun', 1);
INSERT INTO public.star VALUES (3, 'Rigel', 17.00, false, 'A blue supergiant star in the constellation Orion', 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 20.00, false, 'A red supergiant star in the constellation Orion', 1);
INSERT INTO public.star VALUES (5, 'Polaris', 5.00, true, 'The North Star', 1);
INSERT INTO public.star VALUES (6, 'Vega', 2.10, true, 'A bright star in the constellation Lyra', 1);
INSERT INTO public.star VALUES (7, 'Sirius', 2.10, true, 'The brightest star in the night sky', 1);
INSERT INTO public.star VALUES (8, 'Canopus', 8.00, false, 'The second brightest star in the night sky', 2);
INSERT INTO public.star VALUES (9, 'Rigel2', 17.00, false, 'A blue supergiant star in the constellation Orion', 2);
INSERT INTO public.star VALUES (10, 'Deneb', 20.00, false, 'A white supergiant star in the constellation Cygnus', 2);
INSERT INTO public.star VALUES (11, 'Capella', 2.50, true, 'The brightest star in the constellation Auriga', 3);
INSERT INTO public.star VALUES (12, 'Arcturus', 25.00, false, 'The brightest star in the constellation Boötes', 3);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

