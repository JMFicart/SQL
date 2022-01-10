-- liste des produits nom du produit , valeur de l'inventaire du produit 
SELECT ProductName 
				, UnitsInStock * UnitPrice AS InventoryAmount
				, IsOdd = CategoryID % 2 , CategoryID
				, NomCategorie = (SELECT CategoryName 
												FROM Categories
												Where Products.CategoryID 
															= 
															Categories.CategoryID)
				, Description = (SELECT Description 
												FROM Categories
												Where Products.CategoryID 
															= 
															Categories.CategoryID)
FROM Products
