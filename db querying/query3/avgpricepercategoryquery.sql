-- avg price per category
SELECT cat.categoryname, AVG(vp.price) AS avg_price
FROM vendorproduct vp
JOIN product p ON vp.productid = p.productid
JOIN category cat ON p.categoryid = cat.categoryid
GROUP BY cat.categoryname;
