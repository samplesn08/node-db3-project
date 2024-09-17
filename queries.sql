-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select p.productname, c.categoryname 
from Product as p
join Category as c on p.categoryid = c.id
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select o.id, s.companyname, o.orderdate 
from [Order] as o
join Shipper as s on o.shipvia = s.id
where o.orderdate < '2012-08-08%'
order by o.orderdate
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select p.productname, od.quantity, od.orderid
from Product as p
join OrderDetail as od
on p.id = od.productid
where od.orderid = '10251'
order by p.productname
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select o.id as OrderID, c.companyname as CompanyName, e.lastname as EmployeeName
from [Order] as o
join Customer as c
on o.customerid = c.id
join Employee as e
on o.employeeid = e.id