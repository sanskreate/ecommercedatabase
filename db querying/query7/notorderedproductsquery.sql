-- products with no orders
SELECT p.productname
FROM product p
WHERE p.productid NOT IN (
    SELECT vp.productid
    FROM vendorproduct vp
    JOIN orderedproduct op ON vp.vendorproductid = op.vendorproductid
);
