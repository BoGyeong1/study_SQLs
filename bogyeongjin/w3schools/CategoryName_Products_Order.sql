--CategoryName 가 Dairy Products, Seafood이고 
--Price 10.00이상 50.00이하인 주문  OrderID 내역과 총 갯수는 ?
-- OrderID 내역
SELECT OrderID
FROM Orders
WHERE OrderID IN (SELECT OrderID
                FROM OrderDetails
                WHERE ProductID IN (SELECT ProductID
                                    FROM Products
                                    WHERE CategoryID IN (SELECT CategoryID
                                                        FROM Categories
                                                        WHERE CategoryName
                                                        IN ( 'Dairy Products', 'Seafood'))
                                    AND (PRICE BETWEEN 10.00 AND 50.00)));
                                    

-- 총 갯수 구하는 쿼리
SELECT COUNT(OrderID)
FROM Orders
WHERE OrderID IN (SELECT OrderID
                FROM OrderDetails
                WHERE ProductID IN (SELECT ProductID
                                    FROM Products
                                    WHERE CategoryID IN (SELECT CategoryID
                                                        FROM Categories
                                                        WHERE CategoryName
                                                        IN ( 'Dairy Products', 'Seafood'))
                                    AND (PRICE BETWEEN 10.00 AND 50.00)));
                                    -- 답 : 379개

-- 내역과 COUNT를 같이 표시할 순 없다.
--집계 함수가 들어가면 집계함수가 우선이다. 
-- 다른풀이
SELECT DISTINCT OrderID 
FROM OrderDetails
WHERE ProductID (SELECT ProductID
                                    FROM Products
                                    WHERE CategoryID IN (SELECT CategoryID
                                                        FROM Categories
                                                        WHERE CategoryName
                                                        IN ( 'Dairy Products', 'Seafood'))
                                    AND (PRICE BETWEEN 10.00 AND 50.00));