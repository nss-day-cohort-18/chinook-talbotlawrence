--Which sales agent made the most in sales in 2009?

select emp.firstname || " " || emp.lastname  as sales_rep, "$" || printf("%.2f", sum(inv.[total])) as sales_total, inv.invoicedate
from Employee emp 
	join Customer cus on emp.employeeid = cus.supportrepid
	join Invoice inv on cus.customerid = inv.customerid
where emp.title = 'Sales Support Agent' 
and substr(inv.invoicedate, 0, 5) = '2009'
group by emp.employeeid
order by sum(inv.[total]) desc
limit 1;