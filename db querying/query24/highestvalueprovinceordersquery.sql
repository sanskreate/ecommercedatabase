-- province with most value orders
SELECT 
    p.provincename,
    o.orderid,
    SUM(vp.price * op.quantity) AS total_order_price
FROM 
    orders o
JOIN 
    orderedproduct op ON o.orderid = op.orderid
JOIN 
    vendorproduct vp ON op.vendorproductid = vp.vendorproductid
JOIN 
    address a ON o.addressid = a.addressid
JOIN 
    zipcode z ON a.zipcodeid = z.zipcodeid
JOIN 
    province p ON z.provinceid = p.provinceid
GROUP BY 
    p.provincename, o.orderid
ORDER BY 
    total_order_price DESC;
