-- ce format de date fonctionne partout
select * 
from Orders
where OrderDate >= '1997-01-01' and OrderDate <= '1997-12-31'
order by orderdate asc

select * 
from Orders
where OrderDate between '1997-01-01' and '1997-12-31 23:59:59.999'
order by orderdate asc

-- ce format de date fonctionne aux USA et peut-être pas ailleurs
select * 
from Orders
where OrderDate >= '01-01-1997' and OrderDate <= '12-31-1997'
order by orderdate asc

select * 
from Orders
where OrderDate >= '1997-01-01 00:00:00' and OrderDate <= '1997-12-31 23:59:59'
order by orderdate asc

select * 
from Orders
where year(OrderDate) = 1997
order by orderdate asc
