-- most popular category by quantity sold
SELECT cat.categoryname, SUM(op.quantity) AS total_quantity_sold
FROM orderedproduct op
JOIN vendorproduct vp ON op.vendorproductid = vp.vendorproductid
JOIN product p ON vp.productid = p.productid
JOIN category cat ON p.categoryid = cat.categoryid
GROUP BY cat.categoryname
ORDER BY total_quantity_sold DESC
LIMIT 1;
