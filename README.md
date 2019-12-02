# MySQL2

Use this database to answer the following challenges:
https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where

Very Easy: Group By: Start by clearing everything from the SQL Statement box. Then, start a query from the Orders table.Select the ShipperID column.Then type COUNT(OrderID) as your second SELECT statement, aliasing it as Orders.Group by ShipperID, and RUN SQL.

Easy: What is the most expensive product available? What is this the cheapest product available?

Medium: Aggregate: Start by clearing everything from the SQL Statement box, then start a query from the Orders table.SELECT and GROUP BY ShipperIDWrite an aggregate function to count OrderID, and alias as “Orders”.Write an aggregate function to count distinct CustomerID, and alias as “Customers”.

Hard: Logical: Start by clearing everything from the SQL Statement box, then start a query from the Products table.SELECT and GROUP BY ProductName.Write an IF function to return “Main Supplier” if SupplierID = 1, and “Secondary Supplier” if not.Write a CASE expression to return “Low Price” if Price is less than 25, “High Price” if Price is greater than 60, and “Medium Price” if neither of these is true.

Very Hard: In regards to price, which employee shipped the highest amount of orders?
