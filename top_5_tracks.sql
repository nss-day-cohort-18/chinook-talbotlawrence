--Provide a query that shows the top 5 most purchased tracks over all.

select tra.name, "$" || printf("%.2f", sum(tra.unitprice)) as total_price
from Track tra --join InvoiceLine inl on tra.trackid = inl.trackid
	--join Invoice inv on inl.invoiceid = inv.invoiceid
group by tra.name
order by sum(tra.unitprice) desc
limit 5;

--select sum(unitprice) from Track where name = 'Collision'