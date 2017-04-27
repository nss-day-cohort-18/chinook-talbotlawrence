--Which country's customers spent the most?
select billingcountry, "$" || sum([total]) as total_money_per_country
from Invoice
group by billingcountry
order by sum([total]) desc
limit 1;