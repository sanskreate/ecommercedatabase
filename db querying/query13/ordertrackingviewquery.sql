-- order tracking view
CREATE OR REPLACE VIEW order_tracking_view AS
SELECT 
    o.orderid,
    o.customerid,
    o.orderdate,
    o.addressid,
    o.vendorcourierid,
    o.trackingid,
    c.name AS courier_name,
    v.name AS vendor_name
FROM 
    orders o
JOIN 
    vendorcourier vc ON o.vendorcourierid = vc.vendorcourierid
JOIN 
    courier c ON vc.courierid = c.courierid
JOIN 
    vendor v ON vc.vendorid = v.vendorid;
SELECT * FROM order_tracking_view;
