-- Database: owners_pet

-- DROP DATABASE IF EXISTS owners_pet;

CREATE DATABASE owners_pet
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	-- create owners_table
	
	CREATE TABLE owners_table(
		owner_id SERIAL PRIMARY KEY,
		first_name VARCHAR(30),
		last_name VARCHAR(30),
		city VARCHAR(30),
		city_state VARCHAR(2)
	);
-- create pets_table
	CREATE TABLE pets_table (
		
		pet_id SERIAL PRIMARY KEY,
		species VARCHAR(30),
		full_name VARCHAR(30),
		age INT,
		owner_id INT REFERENCES owners_table(owner_id)
		
	);

	ALTER TABLE owners_table
	ADD COLUMN email VARCHAR(50) UNIQUE;
	ALTER TABLE owners_table
	ALTER COLUMN last_name TYPE VARCHAR(50);
		SELECT * FROM pets_table;
		SELECT * FROM owners_table;