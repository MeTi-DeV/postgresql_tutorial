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
		owner_id INT PRIMARY KEY,
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
	CONSTRAINT	owner_id INT FOREIGN KEY ("owner_id") REFERENCES owners_table(id) ON DELETE CASCADE
		
	);

	ALTER TABLE owners_table
	ADD COLUMN email VARCHAR(50) UNIQUE;
	ALTER TABLE owners_table
	ALTER COLUMN last_name TYPE VARCHAR(50);
	ALTER TABLE  owners_table RENAME owner_id TO id;
	ALTER TABLE  owners_table RENAME city_state TO state;
	SELECT * FROM pets_table;
	SELECT * FROM owners_table;
	--insert data owners
	
	INSERT INTO owners_table(id,first_name,last_name,city,state,email)
	VALUES 
	(1,'Samuel','Smith','Boston','MA','samsmith@gmail.com'),
	(2,'Emma','Johnson','Seattle','WA','emjohnson@gmail.com'),
	(3,'John','Oliver','New York','NY','johnoliver@gmail.com'),
	(4,'Olivia','Brown','San Francisco','CA','oliviabrown@gmail.com'),
	(5,'Simon','Smith','Dallas','TX','sismith@gmail.com'),
	(6,null,'Maxwell',null,'CA','lordmaxwell@gmail.com');


	SELECT * FROM owners_table;
	--insert data pets
	INSERT INTO pets_table (pet_id,species,full_name,age,owner_id)
	VALUES (1,'Dog','Rex',5,2),
	(2,'Rabbit','Fluffy',1,1),
	(3,'Dog','Biggles',4,2),
	(4,'Tortoise','Squirtle',15,3);
	-- delete a row from table it's for v11 
	DELETE FROM owners_table
	WHERE owners_table.last_name='Smith';
	SELECT * FROM pets_table;
	-- update data of age pets
	UPDATE pets_table
	SET age='5'
	WHERE full_name='Squirtle';
	
	
	
	
	