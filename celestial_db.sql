-- Create a database named universe
CREATE DATABASE universe;

-- Add tables galaxy, star, planet, moon
CREATE TABLE galaxy();
CREATE TABLE star();
CREATE TABLE planet();
CREATE TABLE moon();

-- Add a column id primary key with auto increment
ALTER TABLE galaxy ADD COLUMN galaxy_id INT NOT NULL;
ALTER TABLE galaxy ADD PRIMARY KEY(galaxy_id);

ALTER TABLE star ADD COLUMN star_id INT NOT NULL;
ALTER TABLE star ADD PRIMARY KEY(star_id);

ALTER TABLE planet ADD COLUMN planet_id INT NOT NULL;
ALTER TABLE planet ADD PRIMARY KEY(planet_id);

ALTER TABLE moon ADD COLUMN moon_id INT NOT NULL;
ALTER TABLE moon ADD PRIMARY KEY(moon_id);

-- Add column name for each table
ALTER TABLE galaxy ADD COLUMN name VARCHAR(100);
ALTER TABLE star ADD COLUMN name VARCHAR(100);
ALTER TABLE planet ADD COLUMN name VARCHAR(100);
ALTER TABLE moon ADD COLUMN name VARCHAR(100);

-- Add major and minor axis diameter at galaxy table (two integer columns)
ALTER TABLE galaxy ADD COLUMN major_axis_diameter NUMERIC(15);
ALTER TABLE galaxy ADD COLUMN minor_axis_diameter NUMERIC(15);


