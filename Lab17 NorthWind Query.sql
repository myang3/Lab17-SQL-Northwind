--1.
select*
from Customers

--2.
select distinct Country
from Customers

--3
select*from Customers
where CustomerID like 'BL%'

--4
select top 100*
from Orders

--5
select*
from Customers
where PostalCode in ('1010', '3012', '12209', '05023');
--like '1010' or PostalCode like '3012' or PostalCode like '12209' or PostalCode like '05023'

--6
select*
from Orders
where ShipRegion != 'NULL'

--7
select*
from Customers
order by Country asc, City desc

--8
insert into Customers
values ('ABCDE','MOMO','MoY','CEO','123 Woodward','Detroit','NULL','48207','USA','123-123-1234','NULL')

--9
UPDATE Orders
SET ShipRegion = 'EuroZone'
WHERE ShipCountry = 'France';

--10
DELETE FROM [Order Details]
WHERE Quantity='1'

--11
SELECT AVG(Quantity)QuantityAverage, MAX(Quantity)QuantityMax, MIN(Quantity)QuantityMin FROM [Order Details]

--12
SELECT AVG(Quantity)QuantityAverage, MAX(Quantity)QuantityMax, MIN(Quantity)QuantityMin FROM [Order Details]
group by OrderID 

--13
select Customers.ContactName, orders.CustomerID, OrderID
from Orders
join Customers on orders.CustomerID = Customers.CustomerID
where OrderID like '10290'

--14
SELECT Customers.CompanyName, Customers.ContactName,Orders.*
FROM Orders
INNER JOIN Customers
ON orders.CustomerID=customers.CustomerID

SELECT Customers.CompanyName, Customers.ContactName,Orders.*
FROM Orders
left join Customers
ON orders.CustomerID=customers.CustomerID

SELECT Customers.CompanyName, Customers.ContactName,Orders.*
FROM Orders
right join Customers
ON orders.CustomerID=customers.CustomerID

--15
select Employees.FirstName
from Employees
where ReportsTo is null

--16
select Employees.FirstName
from Employees
where ReportsTo ='2'