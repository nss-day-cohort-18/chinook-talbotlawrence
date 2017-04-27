--Provide a query that shows all Invoices but includes the # of invoice line items.
select inl.invoicelineid, inv.invoicedate, inv.[total]
from Invoice inv join InvoiceLine inl on inv.invoiceid = inl.invoiceid; 