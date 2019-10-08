/*very easy*/
/*Start by clearing everything from the SQL Statement box. Then, start a query from the Orders table.
Select the ShipperID column.Then type COUNT(OrderID) as your second SELECT statement, aliasing it as Orders.
Group by ShipperID, and RUN SQL.

/*shows total number of orderID, given Alias of OrderId
counts total rows and group by shipperid*/
SELECT * 
FROM Orders;

SELECT ShipperID 
FROM Orders;

SELECT COUNT(OrderID) AS Orders 
FROM Orders;
GROUP BY ShipperID;






/*easy*/
/*Easy: What is the most expensive product available? What is this the cheapest product available?*/
SELECT * 
FROM Products;
/*/ProductID#38*/
Côte de Blaye is the most expensive product available
SELECT * 
FROM Products 
WHERE Price > 100;

/*ProductID#33*/
Geitost is the cheapest product available
SELECT * 
FROM Products 
WHERE Price < 5;





/*medium*/
/*Aggregate: Start by clearing everything from the SQL Statement box, then start a query from the Orders table.
SELECT and GROUP BY ShipperIDWrite an aggregate function to count OrderID, and alias as “Orders”.
Write an aggregate function to count distinct CustomerID, and alias as “Customers”.*/
/*shows total number of orderID, given Alias of OrderId
counts total rows and group by shipperid */
SELECT * 
FROM Orders;
SELECT ShipperID,
COUNT(OrderID) AS Orders 
FROM Orders
GROUP BY ShipperID;

/*counts rows, shows number of customers=89*/
SELECT COUNT(DISTINCT CustomerID) AS Customers
FROM Orders;



/*hard*/
/*Logical: Start by clearing everything from the SQL Statement box, then start a query from the Products table.
SELECT and GROUP BY ProductName.Write an IF function to return “Main Supplier” if SupplierID = 1, and “Secondary Supplier” if not.
Write a CASE expression to return “Low Price” if Price is less than 25, “High Price” if Price is greater than 60, and “Medium Price”
if neither of these is true.
/*shows main supplier if supplier id =1*/
SELECT * 
FROM Products;
SELECT ProductName,
    IF(SupplierID=1, "Main Supplier", "Secondary Supplier")
FROM Products
GROUP BY ProductName;

/*low price=<25, high price=>60, else=medium*/
SELECT SupplierID, Price,
CASE
    WHEN Price < 25 THEN 'Low Price'
    WHEN Price > 60 THEN 'High Price'
ELSE 'Medium Price'
END AS Prices
FROM Products;





/*very hard*/
/*In regards to price, which employee shipped the highest amount of orders?*/
/*shows employeeid, sum and multiply products and order quantity-alias of total price, and total quantity
return records in table even if theres no matching records in the right
Margaret Peacock shipped the highest amount of products regards to price($275109.98)*/

SELECT Orders.EmployeeID, SUM(Products.Price * OrderDetails.Quantity) AS Total_Price, Employees.FirstName, Employees.LastName, OrderDetails.Quantity
FROM Orders
LEFT JOIN OrderDetails
ON Orders.OrderID=OrderDetails.OrderID
LEFT JOIN Products
ON OrderDetails.ProductID=Products.ProductID
LEFT JOIN Employees
ON Orders.EmployeeID=Employees.EmployeeID
GROUP BY EmployeeID;

        

        

        