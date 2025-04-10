-- particular vendor's categories of products he's selling
SELECT DISTINCT v.name AS vendor_name, c.categoryname
FROM vendor v
JOIN vendorproduct vp ON v.vendorid = vp.vendorid
JOIN product p ON vp.productid = p.productid
JOIN category c ON p.categoryid = c.categoryid
WHERE v.vendorid = 10;
