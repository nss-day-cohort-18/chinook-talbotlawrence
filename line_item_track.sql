--Provide a query that includes the purchased track name with each invoice line item.
select tra.name, inl.invoicelineid
from track tra join invoiceline inl on tra.trackid = inl.trackid
order by tra.name; 