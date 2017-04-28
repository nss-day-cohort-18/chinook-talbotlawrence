--Provide a query that shows the most purchased track of 2013.
--
/*
select  tra.name, inv.invoicedate, "$" || printf("%.2f", sum(inv.[total])) as total_price
from Track tra join InvoiceLine inl on tra.trackid = inl.trackid
	join Invoice inv on inl.invoiceid = inv.invoiceid
where substr(inv.invoicedate, 0, 5) = '2013'
group by tra.name
order by sum(inv.[total]) desc
limit 1;
*/
--price
select  tra.name, inv.invoicedate, "$" || printf("%.2f", sum(tra.unitprice)) as total_price
from Track tra join InvoiceLine inl on tra.trackid = inl.trackid
	join Invoice inv on inl.invoiceid = inv.invoiceid
where substr(inv.invoicedate, 0, 5) = '2013'
group by tra.name
order by sum(tra.unitprice) desc
limit 1;

--number of units sold
select tra.name	, count(inv.invoiceid) as number_of_tracks_sold
from Track tra 
join InvoiceLine inl on tra.trackid = inl.trackid
join Invoice inv on inl.invoiceid = inv.invoiceid
where substr(inv.invoicedate, 0, 5) = '2013'
group by tra.name
having count(inv.invoiceid) > (select count(*) from Track where name = 'Looking For Love')   --this still sucks
order by count(inv.invoiceid) desc;
---------------------------------------------------------------------------