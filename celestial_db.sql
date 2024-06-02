-- Create a database named universe
CREATE DATABASE universe;

-- Add tables galaxy, star, planet, moon, black_hole
CREATE TABLE galaxy();
CREATE TABLE star();
CREATE TABLE planet();
CREATE TABLE moon();
CREATE TABLE black_hole();

-- Add primary key each table
ALTER TABLE galaxy ADD COLUMN galaxy_id SERIAL NOT NULL;
ALTER TABLE galaxy ADD PRIMARY KEY (galaxy_id);

ALTER TABLE star ADD COLUMN star_id SERIAL NOT NULL;
ALTER TABLE star ADD PRIMARY KEY(star_id);

ALTER TABLE planet ADD COLUMN planet_id SERIAL NOT NULL;
ALTER TABLE planet ADD PRIMARY KEY(planet_id);

ALTER TABLE moon ADD COLUMN moon_id SERIAL NOT NULL;
ALTER TABLE moon ADD PRIMARY KEY(moon_id);

ALTER TABLE black_hole ADD COLUMN black_hole_id SERIAL NOT NULL;
ALTER TABLE black_hole ADD PRIMARY KEY(black_hole_id);

-- Add name column each table
ALTER TABLE galaxy ADD COLUMN name VARCHAR(40) NOT NULL UNIQUE;
ALTER TABLE star ADD COLUMN name VARCHAR(40) NOT NULL UNIQUE;
ALTER TABLE planet ADD COLUMN name VARCHAR(40) NOT NULL UNIQUE;
ALTER TABLE moon ADD COLUMN name VARCHAR(40) NOT NULL UNIQUE;
ALTER TABLE black_hole ADD COLUMN name VARCHAR(40) NOT NULL UNIQUE;

-- Galaxy Table
ALTER TABLE galaxy ADD COLUMN is_spiral BOOLEAN NOT NULL;
ALTER TABLE galaxy ADD COLUMN distance_from_earth INT NOT NULL;
ALTER TABLE galaxy ADD COLUMN description TEXT NOT NULL;

-- Star Table
ALTER TABLE star ADD COLUMN mass NUMERIC(5,2) NOT NULL;
ALTER TABLE star ADD COLUMN has_planets BOOLEAN NOT NULL;
ALTER TABLE star ADD COLUMN description TEXT NOT NULL;
ALTER TABLE star ADD COLUMN galaxy_id INTEGER NOT NULL;
ALTER TABLE star ADD FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id);

-- Planet Table
ALTER TABLE planet ADD COLUMN year_discovered INT NOT NULL;
ALTER TABLE planet ADD COLUMN star_id INTEGER NOT NULL;
ALTER TABLE planet ADD FOREIGN KEY (star_id) REFERENCES star(star_id);
ALTER TABLE planet ADD COLUMN description TEXT NOT NULL;

-- Moon Table
ALTER TABLE moon ADD COLUMN year_discovered INT NULL;
ALTER TABLE moon ADD COLUMN planet_id INT NOT NULL;
ALTER TABLE moon ADD FOREIGN KEY (planet_id) REFERENCES planet(planet_id);
ALTER TABLE moon ADD COLUMN description TEXT NOT NULL;

-- Black Hole Table
ALTER TABLE black_hole ADD COLUMN galaxy_id INT NOT NULL;
ALTER TABLE black_hole ADD FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id);
ALTER TABLE black_hole ADD COLUMN mass NUMERIC(5,2) NOT NULL;
ALTER TABLE black_hole ADD COLUMN event_horizon_radius INT NOT NULL;

-- Galaxy data
INSERT INTO galaxy (name, is_spiral, distance_from_earth, description) VALUES
('Milky Way', true, 0, 'Our home galaxy'),
('Andromeda', true, 2500000, 'The nearest major galaxy to the Milky Way'),
('Triangulum', true, 3000000, 'The third-largest galaxy in the Local Group'),
('Whirlpool', true, 23000000, 'A grand design spiral galaxy'),
('Sombrero', false, 28000000, 'An unbarred spiral galaxy with a prominent central bulge');

-- Star data
INSERT INTO star (name, galaxy_id, mass, has_planets, description) VALUES
('Sun', 1, 1.0, true, 'Our home star'),
('Proxima Centauri', 1, 0.12, true, 'The closest star to the Sun'),
('Rigel', 1, 17.0, false, 'A blue supergiant star in the constellation Orion'),
('Betelgeuse', 1, 20.0, false, 'A red supergiant star in the constellation Orion'),
('Polaris', 1, 5.0, true, 'The North Star'),
('Vega', 1, 2.1, true, 'A bright star in the constellation Lyra'),
('Sirius', 1, 2.1, true, 'The brightest star in the night sky'),
('Canopus', 2, 8.0, false, 'The second brightest star in the night sky'),
('Rigel2', 2, 17.0, false, 'A blue supergiant star in the constellation Orion'),
('Deneb', 2, 20.0, false, 'A white supergiant star in the constellation Cygnus'),
('Capella', 3, 2.5, true, 'The brightest star in the constellation Auriga'),
('Arcturus', 3, 25.0, false, 'The brightest star in the constellation Boötes');

-- Planet data
INSERT INTO planet (name, star_id, year_discovered, description) VALUES
('Mercury', 1, 0, 'The smallest planet in the Solar System'),
('Venus', 1, 0, 'The second planet from the Sun'),
('Earth', 1, 0, 'Our home planet'),
('Mars', 1, 0, 'The fourth planet from the Sun'),
('Jupiter', 1, 1610, 'The largest planet in the Solar System'),
('Saturn', 1, 1610, 'The sixth planet from the Sun'),
('Uranus', 1, 1781, 'The seventh planet from the Sun'),
('Neptune', 1, 1846, 'The eighth planet from the Sun'),
('Proxima Centauri b', 2, 2016, 'An exoplanet orbiting Proxima Centauri'),
('Rigel b', 3, 1991, 'A hot Jupiter exoplanet orbiting Rigel'),
('Betelgeuse b', 4, 2009, 'A massive exoplanet orbiting Betelgeuse'),
('Polaris Ab', 5, 2006, 'A massive exoplanet orbiting Polaris'),
('Vega b', 6, 2006, 'A massive exoplanet orbiting Vega'),
('Sirius B', 7, 1862, 'A white dwarf star orbiting Sirius');

-- Moon data
INSERT INTO moon (name, planet_id, year_discovered, description) VALUES
('Luna', 3, 0, 'Our Moon'),
('Phobos', 4, 1877, 'The larger and closer of the two moons of Mars'),
('Deimos', 4, 1877, 'The smaller and more distant of the two moons of Mars'),
('Io', 5, 1610, 'The innermost of the four Galilean moons of Jupiter'),
('Europa', 5, 1610, 'The smallest of the four Galilean moons of Jupiter'),
('Ganymede', 5, 1610, 'The largest moon in the Solar System'),
('Callisto', 5, 1610, 'The second-largest moon in the Solar System'),
('Titan', 6, 1655, 'The largest moon of Saturn'),
('Triton', 7, 1846, 'The largest natural satellite of Neptune'),
('Rhea', 5, 1672, 'The second-largest moon of Saturn'),
('Iapetus', 5, 1671, 'A moon of Saturn'),
('Dione', 5, 1684, 'A moon of Saturn'),
('Enceladus', 5, 1789, 'A moon of Saturn'),
('Mimas', 5, 1789, 'A moon of Saturn'),
('Hyperion', 5, 1848, 'A moon of Saturn'),
('Ariel', 7, 1851, 'A moon of Uranus'),
('Umbriel', 7, 1851, 'A moon of Uranus'),
('Titania', 7, 1787, 'The largest moon of Uranus'),
('Oberon', 7, 1787, 'The second-largest moon of Uranus'),
('Miranda', 7, 1948, 'A moon of Uranus'),
('Triton2', 8, 1846, 'The largest natural satellite of Neptune'),
('Nereid', 8, 1949, 'A moon of Neptune'),
('Proteus', 8, 1989, 'A moon of Neptune'),
('Larissa', 8, 1981, 'A moon of Neptune'),
('Galatea', 8, 1989, 'A moon of Neptune'),
('Despina', 8, 1989, 'A moon of Neptune'),
('Thalassa', 8, 1989, 'A moon of Neptune'),
('Naiad', 8, 1989, 'A moon of Neptune'),
('Charon', 9, 1978, 'The largest moon of Pluto'),
('Styx', 9, 2012, 'A moon of Pluto'),
('Nix', 9, 2005, 'A moon of Pluto'),
('Kerberos', 9, 2011, 'A moon of Pluto'),
('Hydra', 9, 2005, 'A moon of Pluto');