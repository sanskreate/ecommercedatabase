-- vendors and their couriers
SELECT v.name AS vendor_name, c.name AS courier_name
FROM vendorcourier vc
JOIN vendor v ON vc.vendorid = v.vendorid
JOIN courier c ON vc.courierid = c.courierid
ORDER BY vendor_name;
