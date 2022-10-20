-- Products 에 CategoryID 가 5, 6을 표시
-- ProductName SupplierName 출력

SELECT Products.ProductName, Suppliers.SupplierName
FROM Products INNER JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
WHERE Products.CategoryID IN ( 5, 6 )
ORDER BY Products.CategoryID;

-- ProductName                      	SupplierName
-- Gustaf's Knäckebröd      	         PB Knäckebröd AB
-- Tunnbröd	                             PB Knäckebröd AB
-- Singaporean Hokkien Fried Mee	     Leka Trading
-- Filo Mix	                             G'day, Mate
-- Gnocchi di nonna Alice               Pasta Buttini s.r.l.
-- Ravioli Angelo                      	Pasta Buttini s.r.l.
-- Wimmers gute Semmelknödel           	Plutzer Lebensmittelgroßmärkte AG
-- Mishi Kobe Niku	                    Tokyo Traders
-- Alice Mutton                        	Pavlova, Ltd.
-- Thüringer Rostbratwurst	            Plutzer Lebensmittelgroßmärkte AG
-- Perth Pasties	                    G'day, Mate
-- Tourtière                        	Ma Maison
-- Pâté chinois                     	Ma Maison