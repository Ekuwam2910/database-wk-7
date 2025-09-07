-- Transform table into 1NF: Each row shows one product per order

SELECT OrderID, CustomerName, 'Laptop'   AS Product FROM ProductDetail WHERE OrderID = 101
UNION ALL
SELECT OrderID, CustomerName, 'Mouse'    AS Product FROM ProductDetail WHERE OrderID = 101
UNION ALL
SELECT OrderID, CustomerName, 'Tablet'   AS Product FROM ProductDetail WHERE OrderID = 102
UNION ALL
SELECT OrderID, CustomerName, 'Keyboard' AS Product FROM ProductDetail WHERE OrderID = 102
UNION ALL
SELECT OrderID, CustomerName, 'Mouse'    AS Product FROM ProductDetail WHERE OrderID = 102
UNION ALL
SELECT OrderID, CustomerName, 'Phone'    AS Product FROM ProductDetail WHERE OrderID = 103;


-- Orders table (removes partial dependency)
-- Each OrderID is linked to exactly one CustomerName
SELECT DISTINCT 
    OrderID, 
    CustomerName
FROM OrderDetails;

-- OrderProducts table (fully depends on OrderID + Product)
-- Each product and its quantity belongs to an order
SELECT 
    OrderID, 
    Product, 
    Quantity
FROM OrderDetails;
