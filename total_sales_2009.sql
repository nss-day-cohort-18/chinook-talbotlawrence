--What are the respective total sales for each of those years?
select "$" || substr(sum([total]), 0, 7) as total_sales from Invoice where substr(invoicedate, 0, 5)  = '2009';