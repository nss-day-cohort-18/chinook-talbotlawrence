--Provide a query that includes the purchased track name AND artist name with each invoice line item.
select art.name as artist_name, tra.name as track_name, inl.invoicelineid
from track tra join invoiceline inl on tra.trackid = inl.trackid
	join album alb on tra.albumid = alb.albumid
	join artist art on alb.artistid = art.artistid
order by art.name, tra.name; 