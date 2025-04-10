-- total revenue per vendor
SELECT v.name AS vendor_name, SUM(vp.price * op.quantity) AS total_revenue
FROM vendor v
JOIN vendorproduct vp ON v.vendorid = vp.vendorid
JOIN orderedproduct op ON vp.vendorproductid = op.vendorproductid
GROUP BY v.name
ORDER BY total_revenue DESC;
