select "$" || printf("%.2f", sum([total])) as total_sales 
from Invoice 
where substr(invoicedate, 0, 5)  = '2011';