select O.*, Concat(E.FirstName, ' ', E.LastName) as Employee
from orders O cross join Employees E -- affiche 7470 = 9  * 830 = produit cartésien
--on o.EmployeeID = e.EmployeeID

select O.*, C.CompanyName
from orders O cross join Employees E cross join Customers C -- affiche 679.770 = 9  * 830 * 91 = produit cartésien
--on o.EmployeeID = e.EmployeeID

select count(*) from orders;
select count(*) from Employees;
select count(*) from Customers;
