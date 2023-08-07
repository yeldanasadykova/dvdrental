-- Use a SELECT statement to grab the first and last names of every customer and their email address.

SELECT first_name, last_name, email FROM customer;

/* Use what you’ve learned about SELECT DISTINCT to retrieve the distinct 
   rating types our films could have in our database. */

SELECT DISTINCT rating FROM film;

/* A customer forgot their wallet at our store! We need to track down their email to inform them. 
   What is the email for the customer with the name Nancy Thomas? */

SELECT email FROM customer
WHERE first_name ='Nancy'
AND last_name ='Thomas';

/* A customer wants to know what the movie “Outlaw Hanky” is about.
   Could you give them the description for the movie “Outlaw Hanky”? */

SELECT description FROM film
WHERE title ='Outlaw Hanky';

/* A customer is late on their movie return, and we’ve mailed them a letter 
   to their address at ‘259 Ipoh Drive’.
   We should also call them on the phone to let them know.
   Can you get the phone number for the customer who lives at ‘259 Ipoh Drive’? */

SELECT phone FROM address
WHERE address ='259 Ipoh Drive';

/* We want to reward our first 10 paying customers.
   What are the customer ids of the first 10 customers who created a payment? */

SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

/* A customer wants to quickly rent a video to watch over their short lunch break.
   What are the titles of the 5 shortest (in length of runtime) movies? */
   
SELECT title,length FROM film
ORDER BY length ASC
LIMIT 5;

/* If the previous customer can watch any movie that is 50 minutes 
   or less in run time, how many options does she have? */
   
SELECT COUNT (title) FROM film
WHERE length <= 50;

-- How many payment transactions were greater than $5.00?

SELECT COUNT(amount) FROM payment
WHERE amount > 5;

-- How many actors have a first name that starts with the letter P?

SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

-- How many unique districts are our customers from?

SELECT COUNT(DISTINCT(district)) FROM address;

-- Retrieve the list of names for those distinct districts from the previous question.

SELECT DISTINCT(district) FROM address;

-- How many films have a rating of R and a replacement cost between $5 and $15?

SELECT COUNT(*) FROM film
WHERE rating ='R'
AND replacement_cost BETWEEN 5 AND 15;

-- How many films have the word Truman somewhere in the title?

SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';

/* We have two staff members, with Staff IDs 1 and 2. We want to give a bonus 
   to the staff member that handled the most payments.
   (Most in terms of number of payments processed, not total dollar amount).
   How many payments did each staff member handle and who gets the bonus? */
   
SELECT staff_id, COUNT(payment_id) FROM payment
GROUP BY staff_id;

/* Corporate HQ is conducting a study on the relationship between replacement cost 
   and a movie MPAA rating (e.g. G, PG, R, etc…).
   What is the average replacement cost per MPAA rating? 
   Note: You may need to expand the AVG column to view correct results */

SELECT rating, ROUND(AVG(replacement_cost),3) FROM film
GROUP BY rating;

/* We are running a promotion to reward our top 5 customers with coupons.
   What are the customer ids of the top 5 customers by total spend? */
   
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

/* We are launching a platinum service for our most loyal customers. We will assign platinum status 
   to customers that have had 40 or more transaction payments.
   What customer_ids are eligible for platinum status? */
   
SELECT customer_id, COUNT(payment_id) FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id)>= 40;

/* What are the customer ids of customers who have spent more than $100 
   in payment transactions with our staff_id member 2? */
   
SELECT customer_id,staff_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id,staff_id
HAVING SUM(amount) > 100
ORDER BY customer_id;