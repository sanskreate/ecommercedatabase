-- vendors who sell top 3 most sold products
WITH top_products AS (
    SELECT vp.productid
    FROM orderedproduct op
    JOIN vendorproduct vp ON op.vendorproductid = vp.vendorproductid
    GROUP BY vp.productid
    ORDER BY SUM(op.quantity) DESC
    LIMIT 3
)
SELECT DISTINCT v.name AS vendor_name, p.productname
FROM vendorproduct vp
JOIN vendor v ON vp.vendorid = v.vendorid
JOIN product p ON vp.productid = p.productid
WHERE vp.productid IN (SELECT productid FROM top_products);
