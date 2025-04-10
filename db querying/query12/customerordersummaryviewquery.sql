-- customer order summary view
CREATE VIEW customer_order_summary AS
SELECT 
    c.customerid,
    c.firstname || ' ' || c.lastname AS customer_name,
    o.orderid,
    o.orderdate,
    COUNT(op.orderedproductid) AS total_items,
    SUM(vp.price * op.quantity) AS total_spent
FROM customer c
JOIN orders o ON c.customerid = o.customerid
JOIN orderedproduct op ON o.orderid = op.orderid
JOIN vendorproduct vp ON op.vendorproductid = vp.vendorproductid
GROUP BY c.customerid, customer_name, o.orderid, o.orderdate
ORDER BY o.orderdate DESC;
SELECT * FROM customer_order_summary;
