-- product review summary view
CREATE VIEW product_review_summary AS
SELECT 
    r.reviewid,
    c.customerid,
    c.firstname || ' ' || c.lastname AS customer_name,
    p.productid,
    p.productname,
    r.rating,
    r.comment,
    o.orderid,
    o.orderdate
FROM review r
JOIN orderedproduct op ON r.orderedproductid = op.orderedproductid
JOIN vendorproduct vp ON op.vendorproductid = vp.vendorproductid
JOIN product p ON vp.productid = p.productid
JOIN orders o ON op.orderid = o.orderid
JOIN customer c ON r.customerid = c.customerid
ORDER BY r.rating DESC;
SELECT * FROM product_review_summary;
