-- top 3 vendors with worst rating
SELECT v.name AS vendor_name, AVG(r.rating) AS avg_rating
FROM review r
JOIN orderedproduct op ON r.orderedproductid = op.orderedproductid
JOIN vendorproduct vp ON op.vendorproductid = vp.vendorproductid
JOIN vendor v ON vp.vendorid = v.vendorid
GROUP BY v.name
ORDER BY avg_rating ASC
LIMIT 3;
