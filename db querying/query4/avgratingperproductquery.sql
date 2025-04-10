-- average rating per product 
SELECT p.productname, ROUND(AVG(r.rating), 2) AS avg_rating
FROM review r
JOIN orderedproduct op ON r.orderedproductid = op.orderedproductid
JOIN vendorproduct vp ON op.vendorproductid = vp.vendorproductid
JOIN product p ON vp.productid = p.productid
GROUP BY p.productname
ORDER BY avg_rating DESC;
