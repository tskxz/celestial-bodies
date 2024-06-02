-- Galaxy data
INSERT INTO galaxy (name, is_spiral, distance_from_earth, description) VALUES
('Whirlpool', true, 23000000, 'A grand design spiral galaxy'),
('Sombrero', false, 28000000, 'An unbarred spiral galaxy with a prominent central bulge'),
('Sombrero2', false, 28000000, 'An unbarred spiral galaxy with a prominent central bulge');

-- Star data
INSERT INTO star (name, galaxy_id, mass, has_planets, description) VALUES
('Betelgeuse', 1, 20.0, false, 'A red supergiant star in the constellation Orion'),
('Polaris', 1, 5.0, true, 'The North Star'),
('Vega', 1, 2.1, true, 'A bright star in the constellation Lyra');