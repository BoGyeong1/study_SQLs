-- Categories 별로 구성된 제품 갯수, 가격평균, 최고값, 최저값 표시하세요.

SELECT COUNT(ProductID), CategoryID, AVG(Price), MAX(Price), MIN(Price)
FROM Products
GROUP BY CategoryID;


-- COUNT(ProductID)	CategoryID	AVG(Price)	MAX(Price)	MIN(Price)
-- 12	1	37.979167	263.50	4.50
-- 12	2	23.062500	43.90	10.00
-- 13	3	25.160000	81.00	9.20
-- 10	4	28.730000	55.00	2.50
-- 7	5	20.250000	38.00	7.00
-- 6	6	54.006667	123.79	7.45
-- 5	7	32.370000	53.00	10.00
-- 12	8	20.682500	62.50	6.00