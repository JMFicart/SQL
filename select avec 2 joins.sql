-- liste des produits nom du produit , valeur de l'inventaire du produit 
SELECT ProductName 
				, UnitsInStock * UnitPrice AS InventoryAmount
				, IsOdd = Products.CategoryID % 2 , Products.CategoryID
				, CategoryName 
				, Description
				, S.CompanyName
FROM Products
	inner Join Categories 
		ON Products.Categoryid = Categories.CategoryID
	inner Join Suppliers AS S
		ON Products.SupplierID = S.SupplierID;
