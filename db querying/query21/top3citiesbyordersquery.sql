-- top 3 cities as per no. of orders
SELECT ci.cityname, COUNT(*) AS order_count
FROM orders o
JOIN address a ON o.addressid = a.addressid
JOIN zipcode z ON a.zipcodeid = z.zipcodeid
JOIN city ci ON z.cityid = ci.cityid
GROUP BY ci.cityname
ORDER BY order_count DESC
LIMIT 3;
