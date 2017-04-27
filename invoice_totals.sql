--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
--select * from Invoice limit 100;
select "$" || inv.[total] as total_price, cus.firstname || " " || cus.lastname as customer_name, 
	cus.country, emp.firstname || " " || emp.lastname as employee_name
from Employee emp join Customer cus on emp.employeeid = cus.supportrepid join Invoice inv on cus.customerid = inv.customerid