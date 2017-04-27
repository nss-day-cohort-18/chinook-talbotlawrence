--Provide a query that shows the # of invoices per country. HINT: GROUP BY
--select * from invoice order by billingcountry;
select count(invoiceid), billingcountry from invoice group by billingcountry order by count(invoiceid);