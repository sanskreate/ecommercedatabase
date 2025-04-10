-- average age of customers
SELECT AVG(EXTRACT(YEAR FROM AGE(current_date, dob))) AS average_age FROM customer;
