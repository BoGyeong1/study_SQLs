--직원(Employees) EmployeeID가 7, 9인 종업원이 받는 주문(Orders) 총 수는 ?

SELECT COUNT(*)
FROM Orders
WHERE EmployeeID IN (SELECT EmployeeID
					FROM Employees
					WHERE EmployeeID IN (7,9)
                    );

-- 답 : 115개