-- 직원의 ID가 7, 9인 종업원이 받는 주문 총 수
SELECT COUNT(*)
FROM Orders
WHERE EmployeeID
IN (
	SELECT EmployeeID
	FROM Employees
	WHERE EmployeeID
	IN (7, 9)
);
-- 결과 : 115건