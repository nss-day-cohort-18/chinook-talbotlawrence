--How many Invoices were there in 2009 and 2011?
--select substr(invoicedate, 0, 5) from invoice limit 100;
--select invoicedate from Invoice where substr(invoicedate, 0, 5) in ('2009', '2011');
select count(invoiceid) from Invoice where substr(invoicedate, 0, 5) in ('2011');
--why not use in sometimes?