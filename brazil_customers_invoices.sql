--Provide a query showing the Invoices of customers who are from Brazil. 
--The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
select cus.firstname || " " || cus.lastname as full_name, inv.invoiceid, inv.invoicedate, inv.billingcountry
from Customer cus 
join Invoice inv on cus.customerid = inv.customerid
where inv.billingcountry = 'Brazil';