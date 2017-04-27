--Provide a query showing Customers (just their full names, customer ID and country) 
--who are not in the US.
select * from Customer limit 100;
select firstname || " " || lastname as full_name, customerid, country
from Customer
where country != 'USA' ;