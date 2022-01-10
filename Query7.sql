-- union, intersect, except
-- la liste des clients triée sur le code postal
--    nom du client, adresse, code postal, ville, pays

select CompanyName as "Name", "Address", PostalCode, City, Country, 'C' as "Code"
from customers
--order by country asc, PostalCode asc
union
select CompanyName, "Address", PostalCode, City, Country, 'F'
from suppliers
union
select concat(lastname, ' ', FirstName) as name, "Address", PostalCode, City, Country, 'E'
from Employees
order by country asc, PostalCode asc;

--UNION ne garde qu'une occurence des doublons.
--UNION ALL garde les occurences des doublons.

-- INTERSECT ne garde que ce qui est commun aux deux selects.

-- EXCEPT garde tout ce qui provient du premier select moins ce qui est commun avec le deuxième select.

