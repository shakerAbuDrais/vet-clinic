/* Database schema to keep the structure of entire database. */

CREATE DATABASE vet_clinic;

CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  date_of_birth DATE,
  escape_attempts INTEGER,
  neutered BOOLEAN,
  weight_kg DECIMAL
);

/* Project 3 step 1 */
CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(255) NOT NULL,
  age INTEGER
);

/* section 1 step 2 */

CREATE TABLE species (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

/* section 1 step 3 */

ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id INTEGER;
ALTER TABLE animals ADD COLUMN owner_id INTEGER;

/* Project Four - 1 */

CREATE TABLE vets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INTEGER,
  date_of_graduation DATE
);

/* step 2 */

CREATE TABLE specializations (
  id SERIAL PRIMARY KEY,
  species_id INTEGER NOT NULL,
  vet_id INTEGER NOT NULL,
  FOREIGN KEY (species_id) REFERENCES species(id),
  FOREIGN KEY (vet_id) REFERENCES vets(id)
);

