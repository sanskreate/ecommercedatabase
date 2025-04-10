-- customers with both a cart and atleast one order
SELECT DISTINCT c.customerid, c.firstname || ' ' || c.lastname AS customer_name
FROM customer c
JOIN cart ct ON c.customerid = ct.customerid
JOIN orders o ON c.customerid = o.customerid;
