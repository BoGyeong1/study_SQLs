-- 카테고리 별로 10 이상인 제품 있는 카테고리 표시 ?
SELECT COUNT(ProductID), CategoryID
FROM Products
GROUP BY CategoryID
HAVING COUNT(ProductID) >= 10 ;

-- Number of Records: 5
-- COUNT(ProductID)	CategoryID
-- 12	1
-- 12	2
-- 13	3
-- 10	4
-- 12	8

