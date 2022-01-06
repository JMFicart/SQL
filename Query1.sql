--select * 
--from products 
--where (UnitsInStock <= 15 and (CategoryID = 2 or CategoryID = 4)) or (UnitsInStock > 30 and CategoryID = 3) 
--order by UnitPrice desc

--select categoryid, sum(unitprice * unitsinstock) as Valeur
--from products 
--where (UnitsInStock <= 15 and (CategoryID = 2 or CategoryID = 4)) or (UnitsInStock > 30 and CategoryID = 3)
----where categoryid in (2,3,4)
--group by CategoryID
--order by Valeur desc

--select * 
--from products 
--where categoryid = 2 or CategoryID = 4 or CategoryID = 6

--select * 
--from products 
--where categoryid in (2, 4, 6)

--select * 
--from products 
--where categoryid not in (2, 4, 6)

--select *
--from products
--where productname like 'cha%'

-- Liste des produits : nom du produit, valeur de l'inventaire
--select ProductName, unitprice * unitsinstock as InventoryValue, CategoryID, isodd = categoryid % 2
--from products
--order by ProductName

-- Liste des produits : nom du produit, valeur de l'inventaire, nom de la catégorie
--select ProductName, unitprice * unitsinstock as InventoryValue, products.CategoryID, IsOdd = categoryId % 2,
--CategoryName=(select categoryname from categories where categoryid = products.categoryid), 
--Description=(select Description from categories where categoryid = products.categoryid)
--from products 
--order by ProductName

--select ProductName, unitprice * unitsinstock as InventoryValue, products.CategoryID, IsOdd = Products.categoryId % 2,Categories.CategoryName
--from products join Categories on products.CategoryID = Categories.CategoryID
--order by ProductName

-- Liste des produits : nom du produit, valeur de l'inventaire, nom de la catégorie, nom du fournisseur
select ProductName, unitprice * unitsinstock as InventoryValue, P.CategoryID, IsOdd = P.categoryId % 2, C.CategoryName, description, S.CompanyName
from (products P join Categories C on P.CategoryID = C.CategoryID) join Suppliers S on P.SupplierID = S.SupplierID 
--order by ProductName
