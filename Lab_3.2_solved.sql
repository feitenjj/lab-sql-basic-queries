USE sakila;

-- 1 Display all available tables in the Sakila database.
SHOW TABLES;

-- 2 Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor;
SELECT*FROM sakila.film;
SELECT * FROM sakila.customer


-- 3 Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT title FROM sakila.film

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language
FROM sakila.language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name
 FROM sakila.staff;
 
 -- 4 Retrieve unique release years.
SELECT DISTINCT(release_year)
FROM sakila.film;


-- 5 Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
SELECT SUM(store_id)
FROM sakila.store
WHERE store_id  IS NOT NULL;

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) FROM sakila.staff;
WHERE staff_id  IS NOT NULL;


-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT * from sakila.inventory
SELECT * FROM sakila.rental

SELECT COUNT(*) AS total_copies_available
FROM inventory;

SELECT COUNT(  inventory_id) AS total_rentals
FROM rental;

SELECT 
    (SELECT COUNT(*) FROM inventory) AS total_copies_available,
    (SELECT COUNT(inventory_id) FROM rental) AS total_rentals

-- 5.4 Determine the number of distinct last names of the actors in the database.

select DISTINCT last_name from sakila.actor

-- 6 Retrieve the 10 longest films.
SELECT length FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- Use filtering techniques in order to:
-- 7.1 Retrieve all actor  with the first name "SCARLETT".
Select last_name FROM sakila.actor
WHERE last_name = 'SCARLETT';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%'AND length > 100

-- 7.3 Determine the number of films that include Behind the Scenes content


