-- customers who never ordered anything
SELECT c.customerid, c.firstname || ' ' || c.lastname AS customer_name
FROM customer c
LEFT JOIN orders o ON c.customerid = o.customerid
WHERE o.orderid IS NULL;
