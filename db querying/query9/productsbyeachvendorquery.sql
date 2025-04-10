-- no. products listed by each vendor
SELECT v.name AS vendor_name, COUNT(vp.vendorproductid) AS total_products
FROM vendor v
JOIN vendorproduct vp ON v.vendorid = vp.vendorid
GROUP BY v.name
ORDER BY total_products DESC;
