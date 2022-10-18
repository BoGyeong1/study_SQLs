
SELECT Categories.CategoryName,COUNT(Products.ProductID) AS NumberOfOProducts FROM Products
LEFT JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY CategoryName;