-- CTE Common Table Expression
with tbl_intermediaire
as (select Country as name
from customers
union
select ShipCountry as name
from orders
union
select Country as name
from suppliers
union
select Country as name
from Employees
)
select identity(int,1,1) as CountryId, Name
into Country
From tbl_intermediaire
order by Name asc

select * 
from Country
