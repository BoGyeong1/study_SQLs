-- CategoryID 별 ProductID 의 개수가 10개 이상인 데이터를 출력

SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID
HAVING COUNT(ProductID) >= 10;

-- Answer
-- CategoryID	COUNT(ProductID)
-- 1	12
-- 2	12
-- 3	13
-- 4	10
-- 8	12