-- top 5 most sold products
SELECT p.productname, SUM(op.quantity) AS total_sold
FROM orderedproduct op
JOIN vendorproduct vp ON op.vendorproductid = vp.vendorproductid
JOIN product p ON vp.productid = p.productid
GROUP BY p.productname
ORDER BY total_sold DESC
LIMIT 5;
