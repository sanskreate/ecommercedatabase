-- customers with empty cart
SELECT c.customerid, c.firstname || ' ' || c.lastname AS customer_name
FROM customer c
LEFT JOIN cart ct ON c.customerid = ct.customerid
LEFT JOIN cartproduct cp ON ct.cartid = cp.cartid
WHERE cp.cartproductid IS NULL;
