--Provide a query only showing the Customers from Brazil.
select firstname || " " || lastname as full_name, customerid, country
from Customer
where country = 'Brazil' ;