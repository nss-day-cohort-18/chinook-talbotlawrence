--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. 
--HINT: GROUP BY
--select * from invoiceline order by invoiceid limit 100;
select count(invoicelineid) 
from InvoiceLine 
group by invoiceid;