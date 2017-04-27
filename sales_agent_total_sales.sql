--Provide a query that shows total sales made by each sales agent.
--select * from Employee where title = 'Sales Support Agent';

select emp.firstname || " " || emp.lastname as sales_rep, "$" || printf("%.2f", sum(inv.[total])) as sales_total
from Employee emp join Customer cus on emp.employeeid = cus.supportrepid
	join Invoice inv on cus.customerid = inv.customerid
where emp.title = 'Sales Support Agent'
group by emp.employeeid;