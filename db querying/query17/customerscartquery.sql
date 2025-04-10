-- customer's cart
SELECT c.firstname || ' ' || c.lastname AS customer_name, p.productname, cp.quantity
FROM cart ct
JOIN customer c ON ct.customerid = c.customerid
JOIN cartproduct cp ON ct.cartid = cp.cartid
JOIN vendorproduct vp ON cp.vendorproductid = vp.vendorproductid
JOIN product p ON vp.productid = p.productid;
