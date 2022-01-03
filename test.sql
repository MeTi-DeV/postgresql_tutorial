-- Database: test

-- DROP DATABASE IF EXISTS test;

CREATE DATABASE test
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
	
	--create modifiying column
	CREATE TABLE example (
	example_id INT PRIMARY KEY,
		first_name VARCHAR(30),
		last_name VARCHAR(30)
	);
	SELECT * FROM example;

	 --add new column to db
--  	 ALTER TABLE example
--  	 ADD COLUMN email VARCHAR(50) UNIQUE
	 
	 ALTER TABLE example
 	 ADD COLUMN nationality VARCHAR(30)
	 ADD COLUMN age INT NOT NULL
 