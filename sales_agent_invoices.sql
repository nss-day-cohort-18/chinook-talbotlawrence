--Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.
--select * from Customer limit 100;
--THIS MAY BE WRONG!!  I'm not sure about the join between the customer table and the employee table
select emp.firstname || " " || emp.lastname as full_name
from Employee emp join Customer cus on emp.employeeid = cus.supportrepid join Invoice inv on cus.customerid = inv.customerid
where emp.title = 'Sales Support Agent';