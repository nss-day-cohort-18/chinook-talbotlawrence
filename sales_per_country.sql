--Provide a query that shows the total sales per country.
select billingcountry, "$" || sum([total]) as total_money_per_country
from Invoice
group by billingcountry
--------------------------------------------------------------------------------
 select billingcountry, count([invoiceid]) as total_number_of_sales_per_country
from Invoice
group by billingcountry