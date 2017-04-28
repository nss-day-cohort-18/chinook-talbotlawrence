--Provide a query showing only the Employees who are Sales Agents.
--select * from Employee limit 100;
select firstname || " " || lastname as full_name, title
from Employee
--where title like '%Agent%';
where title = 'Sales Support Agent';