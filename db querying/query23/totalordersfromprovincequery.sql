-- total orders from province
SELECT 
    p.provincename,
    COUNT(o.orderid) AS total_orders
FROM 
    orders o
JOIN 
    address a ON o.addressid = a.addressid
JOIN 
    zipcode z ON a.zipcodeid = z.zipcodeid
JOIN 
    province p ON z.provinceid = p.provinceid
WHERE 
    p.provincename IN ('Maharashtra', 'Karnataka')
GROUP BY 
    p.provincename;
