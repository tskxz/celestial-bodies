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