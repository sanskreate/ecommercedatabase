-- highest value order
SELECT o.orderid, c.firstname || ' ' || c.lastname AS customer_name, SUM(op.quantity * vp.price) AS total_value
FROM orders o
JOIN orderedproduct op ON o.orderid = op.orderid
JOIN vendorproduct vp ON op.vendorproductid = vp.vendorproductid
JOIN customer c ON o.customerid = c.customerid
GROUP BY o.orderid, c.firstname, c.lastname
ORDER BY total_value DESC
LIMIT 1;
