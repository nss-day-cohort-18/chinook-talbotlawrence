--Provide a query that shows the count of customers assigned to each sales agent.
select 
emp.firstname || " " || emp.lastname  as sales_rep, 
count(cus.customerid) as number_of_customers
from Employee emp 
join Customer cus on emp.employeeid = cus.supportrepid
group by emp.employeeid

--select * from Employee where title = 'Sales Support Agent';
--select firstname, supportrepid from Customer;