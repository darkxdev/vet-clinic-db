/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    name varchar(100)
);

/* Vet Clinic */

CREATE DATABASE vet_clinic;
CREATE TABLE animals(
    id int primary key,
    name varchar,
    date_of_birth date,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal
);

ALTER TABLE animals ADD COLUMN species VARCHAR;

/* Multiple tables */

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    age INT
);


CREATE TABLE species(
    id SERIAL PRIMARY KEY,
    name VARCHAR
);

ALTER TABLE animals DROP CONSTRAINT animals_pkey;
ALTER TABLE animals DROP COLUMN id;
ALTER TABLE animals ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD species_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_species_id FOREIGN KEY (species_id) REFERENCES species(id);

ALTER TABLE animals ADD owner_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_owner_id FOREIGN KEY (owner_id) REFERENCES owners(id);

/* Visits */

CREATE TABLE vets(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    age INT,
    date_of_graduation DATE
);

CREATE TABLE specializations (
    vet_id INTEGER REFERENCES vets(id),
    species_id INTEGER REFERENCES species(id),
    PRIMARY KEY (vet_id, species_id)
);

CREATE TABLE visits (
    animal_id INTEGER REFERENCES animals(id),
    vet_id INTEGER REFERENCES vets(id),
    visit_date DATE NOT,
    PRIMARY KEY (animal_id, vet_id, visit_date)
);
