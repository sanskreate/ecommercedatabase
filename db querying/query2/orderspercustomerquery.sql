-- no. of orders per customer
SELECT c.firstname || ' ' || c.lastname AS customer_name, COUNT(o.orderid) AS total_orders
FROM customer c
JOIN orders o ON c.customerid = o.customerid
GROUP BY customer_name
ORDER BY total_orders DESC;
