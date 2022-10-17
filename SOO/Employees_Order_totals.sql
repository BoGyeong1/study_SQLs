-- 직원의 ID가 7, 9인 종업원이 받는 주문 총 수
SELECT OrderID
FROM Orders
WHERE EmployeeID
IN (
<<<<<<< HEAD
    SELECT EmployeeID
    FROM Employees
    WHERE EmployeeID
    IN (7, 9)
=======
	SELECT EmployeeID
	FROM Employees
	WHERE EmployeeID
	IN (7, 9)
>>>>>>> 2b469dc3aa5d49e1cff4f4e9fc2ed68ed2d082bb
);
-- 결과 : 115건
