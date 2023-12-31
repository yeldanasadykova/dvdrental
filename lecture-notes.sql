-- SELECT all columns from the customer table
SELECT * FROM customer;

-- SELECT column wise
SELECT first_name, last_name, email FROM customer;
SELECT customer_id, first_name, last_name FROM customer;

-- Rename columns
SELECT first_name AS "name" FROM customer;

-- LIMIT clause is used to specify the number of records to return
SELECT * FROM customer
LIMIT 10;

/* WHERE clause is used to filter record. It is used to extract only 
   those records that fulfill a scecified condition */
SELECT * FROM customer
WHERE store_id = 1;

/* Comparison operators on numerical data
   Equal to =
   Not equal to != or <>
   Greater than >
   Less than <
   Greater than or equal to >=
   Less than or equal to <= */

SELECT * FROM address
WHERE district = 'Pavlodar';

SELECT * FROM payment
WHERE amount < 5.99;

-- Arithmetic in SQL
SELECT 	customer_id, store_id, 
		customer_id + store_id AS id_name
FROM customer;

SELECT 	customer_id, store_id, 
		customer_id -5* store_id AS id_name
FROM customer;

SELECT 	customer_id, store_id, 
		(customer_id + store_id)/2 AS id_name
FROM customer;

-- CREATE TABLE

CREATE TABLE person(
	person_id INT,
	last_name VARCHAR(255),
	first_name VARCHAR (150),
	address VARCHAR (255),
	city VARCHAR (100));
	
-- INSERT INTO is used to insert new records in a table

INSERT INTO person (person_id, city)
VALUES ('1','Prague');

INSERT INTO person 
VALUES ('2','Kosina','Roman','Jenkin','Oslo');

-- How to test for NULL values

SELECT * FROM person
WHERE address IS NULL;

SELECT * FROM person
WHERE city IS NOT NULL;


-- UPDATE statement is used to modify the existing records in a tabel

UPDATE person
SET first_name = 'Alan', city = 'Berlin'
WHERE person_id = 1;

/* Be careful when updating records. 
   If you omit the WHERE clause, ALL records will be updated! */
   
DELETE FROM person WHERE first_name = 'Roman';

DELETE FROM person;
