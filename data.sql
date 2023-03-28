/* Populate database with sample data. */

INSERT INTO animals (name) VALUES ('Luna');
INSERT INTO animals (name) VALUES ('Daisy');
INSERT INTO animals (name) VALUES ('Charlie');

/* Vet Clinic */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (1, 'Agumon', 'February 3, 2020', 0, true, 10.23);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (2, 'Gabumon', 'November 15, 2018', 2, true, 8);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (3, 'Pikachu', 'January 7, 2021', 1, false, 15.04);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (4, 'Devimon', 'May 12, 2017', 5, true, 11);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES
  (5, 'Charmander', 'Feb 8, 2020', 0, false, -11),
  (6, 'Plantmon', 'Nov 15, 2021', 2, true, -5.7),
  (7, 'Squirtle', 'Apr 2, 1993', 3, false, -12.13),
  (8, 'Angemon', 'Jun 12, 2005', 1, true, -45),
  (9, 'Boarmon', 'Jun 7, 2005', 7, true, 20.4),
  (10, 'Blossom', 'Oct 13, 1998', 3, true, 17),
  (11, 'Ditto', 'May 14, 2022', 4, true, 22);
