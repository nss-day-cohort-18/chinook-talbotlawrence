--Provide a query that shows the top 3 best selling artists.

select art.name, "$" || printf("%.2f", sum(tra.unitprice)) as total_price
from Artist art join Album alb on art.artistid = alb.artistid
	join Track tra on alb.albumid = tra.albumid
group by art.name
order by sum(tra.unitprice) desc
limit 3;