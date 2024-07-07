SELECT * FROM Categories;

--Query 1
SELECT CategoryName, Description FROM Categories;

--Query 2
SELECT * FROM Customers
SELECT CustomerID, ContactName, CompanyName FROM Customers WHERE CITY = 'LONDON';


--Query 3
SELECT * FROM Suppliers WHERE Fax IS NOT NULL;

--Query 4
SELECT * FROM Orders WHERE RequiredDate BETWEEN '1997-01-01 00:00:00:000' AND '1998-01-01 00:00:00:000' AND Freight < 100;

--Query 5
SELECT CompanyName, ContactTitle FROM Customers WHERE Country IN ('Mexico','Sweden','Germany');

--Query 7
SELECT CategoryName, Description FROM Categories WHERE CategoryName LIKE 'Co%';

--Query 6
SELECT COUNT(Discontinued) AS Discontinued FROM Products;

--Query 8
SELECT * FROM Suppliers WHERE Address LIKE '%rue%' ORDER BY CompanyName;

--Query 9
SELECT * FROM [Order Details];

--Query 10
SELECT * FROM Customers;

SELECT * FROM Orders;

SELECT * FROM Shippers;

SELECT ContactName, Address FROM Customers WHERE CustomerID IN (
	SELECT CustomerID FROM Orders WHERE ShipVia IN (
		SELECT ShipperID FROM Shippers WHERE CompanyName = 'Speedy Express'
	)
);

--Query 11
SELECT * FROM Suppliers;
SELECT CompanyName,ContactName,ContactTitle,Region.RegionDescription FROM Suppliers JOIN 
	Products ON Products.SupplierID=Suppliers.SupplierID JOIN 
		[Order Details] ON [Order Details].ProductID=Products.ProductID 
			JOIN Orders ON Orders.OrderID = [Order Details].OrderID 
				JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID 
					JOIN EmployeeTerritories ON EmployeeTerritories.EmployeeID = Employees.EmployeeID 
						JOIN Territories ON Territories.TerritoryID = EmployeeTerritories.TerritoryID 
							JOIN Region ON Territories.RegionID=Region.RegionID

SELECT * FROM Employees;
SELECT * FROM Orders;
SELECT * FROM EmployeeTerritories;

--Query 12
SELECT * FROM Categories;
SELECT * FROM Products WHERE CategoryID IN (
	SELECT CategoryID FROM Categories WHERE CategoryName = 'Condiments'
);

--Query 13
SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT * FROM Customers WHERE CustomerID NOT IN (
	SELECT CustomerID FROM Orders 
);


--Query 14
SELECT * FROM Shippers;
INSERT INTO Shippers VALUES ('Amazon','9987654321');

--Query 15
UPDATE Shippers
SET CompanyName = 'Amazon Prime Shipping'
WHERE CompanyName = 'Amazon';


--Query 16
SELECT 
    sh.CompanyName,
    ROUND(SUM(o.Freight), 0) AS TotalFreight
FROM 
    Shippers sh
INNER JOIN 
    Orders o ON sh.ShipperID = o.ShipVia
GROUP BY 
    sh.CompanyName;

--Query 17
SELECT 
    CONCAT(LastName, ', ', FirstName) AS FullName
FROM 
    Employees;

--Query 18
SELECT * FROM Customers
INSERT INTO Customers
VALUES ('LEWIS', 'Company Name', 'UserName', 'TitleABC', 'EARTH', 'JAMNAGAR', 'MADHAVBAGH-5', '361004', 'INDIA', '8780570242', '---');


SELECT ProductID 
FROM Products 
WHERE ProductName = 'Grandma''s Boysenberry Spread';

--Query 19
DELETE FROM [Order Details] 
WHERE OrderID = 10248;
SELECT * FROM [Order Details];

--Query 20
SELECT 
    ProductName,
    UnitsInStock AS TotalUnits
FROM 
    Products
WHERE 
    UnitsInStock > 100;
