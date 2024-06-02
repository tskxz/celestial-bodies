-- Galaxy data
INSERT INTO galaxy (name, is_spiral, distance_from_earth, description) VALUES
('Milky Way', true, 0, 'Our home galaxy'),
('Andromeda', true, 2500000, 'The nearest major galaxy to the Milky Way'),
('Triangulum', true, 3000000, 'The third-largest galaxy in the Local Group');

-- Star data
INSERT INTO star (name, galaxy_id, mass, has_planets, description) VALUES
('Sun', 1, 1.0, true, 'Our home star'),
('Proxima Centauri', 1, 0.12, true, 'The closest star to the Sun'),
('Rigel', 1, 17.0, false, 'A blue supergiant star in the constellation Orion');

-- Planet data
INSERT INTO planet (name, star_id, year_discovered, description) VALUES
('Mercury', 1, 0, 'The smallest planet in the Solar System'),
('Venus', 1, 0, 'The second planet from the Sun'),
('Earth', 1, 0, 'Our home planet');

-- Moon data
INSERT INTO moon (name, planet_id, year_discovered, description) VALUES
('Luna', 3, 0, 'Our Moon'),
('Phobos', 3, 1877, 'The larger and closer of the two moons of Mars'),
('Deimos', 3, 1877, 'The smaller and more distant of the two moons of Mars');

-- Black Hole data
INSERT INTO black_hole (name, galaxy_id, mass, event_horizon_radius) VALUES
('Cygnus X-1', 1, 14.8, 44),
('GRO J1655-40', 1, 6.3, 18),
('V404 Cygni', 1, 12.0, 36);