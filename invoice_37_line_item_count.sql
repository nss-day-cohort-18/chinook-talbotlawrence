--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
--select * from invoiceline where invoiceid = 37;
select count(invoiceid) from InvoiceLine where invoiceid = 37;