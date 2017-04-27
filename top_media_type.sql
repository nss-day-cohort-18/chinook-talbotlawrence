--Provide a query that shows the most purchased Media Type.
--select distinct(name) from MediaType;

select met.name, "$" || printf("%.2f", sum(tra.unitprice)) as total_price
from Artist art join Album alb on art.artistid = alb.artistid
	join Track tra on alb.albumid = tra.albumid
	join MediaType met on tra.mediatypeid = met.mediatypeid
group by met.name
order by sum(tra.unitprice) desc