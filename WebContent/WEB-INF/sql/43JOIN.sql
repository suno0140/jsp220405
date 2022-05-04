USE w3schools;

SELECT * FROM Orders;
-- 1996-07-04 에 주문한 고객의 이름
SELECT o.OrderDate, c.CustomerName 
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04 에 주문한 고객의 이름과 처리한 직원의 이름
SELECT o.OrderDate, c.CustomerName, concat(e.FirstName, ' ', e.LastName) EmployeeName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
              JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04 의 주문을 처리한 직원명과 배송자명 조회
-- Orders, Employees, Shippers 3개 테이블 조인
SELECT o.OrderDate, s.ShipperName, concat(e.FirstName, ' ', e.LastName) EmployeeName
FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
              JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04 에 주문한 고객과 처리한 직원, 배송한 배송자명
-- Orders, Customers, Employees, Shipeers
SELECT o.OrderDate, c.CustomerName, e.Lastname, s.ShipperName 
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
              JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04에 주문한 상품명(들)
-- OrderDetails, Orders, Products
SELECT o.OrderDate, p.ProductName, d.Quantity, p.Price, (d.Quantity * p.Price) total
FROM OrderDetails d JOIN Orders o ON o.OrderID = d.OrderID
                    JOIN Products p ON d.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-08 각 고객의 주문 총액
-- Orders, OrderDetails, Products, Customers 4개 테이블
SELECT o.OrderDate, p.ProductName, c.CustomerName, sum(d.Quantity * p.Price) '총계'
FROM Orders o JOIN OrderDetails d ON d.OrderID = o.OrderID
			  JOIN Products p ON d.ProductID = p.ProductID
			  JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE OrderDate = '1996-07-08'
GROUP BY c.CustomerID;

-- 1996 년 가장 많은 주문을 받은 직원 
-- 1996 년 직원별 처리한 주문 총 금액 조회(금액이 높은 --> 낮은)
SELECT o.OrderDate, CONCAT(e.FirstName, ' ', e.LastName) Name, sum(d.Quantity * p.Price) '총 금액'
FROM Orders o JOIN OrderDetails d ON d.OrderID = o.OrderID
			  JOIN Products p ON d.ProductID = p.ProductID
              JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate BETWEEN '1996-01-01' AND '1996-12-31'
GROUP BY e.EmployeeID
ORDER BY 3 DESC;

-- 가장 많은 상품수량이 팔린 카테고리 (높->낮)
-- 카테고리별 판매수량(높->낮) 전체기간
SELECT c.CategoryID, c.CategoryName, SUM(d.Quantity) '총계' 
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
                  JOIN OrderDetails d ON p.ProductID = d.ProductID
GROUP BY c.CategoryID
ORDER BY 3 DESC;

-- '1996년 8월 1주동안 카테고리별 판매수량(높->낮)'
SELECT c.CategoryID, c.CategoryName, SUM(IFNULL(d.Quantity, 0)) Total
FROM Orders o JOIN OrderDetails d ON d.OrderID = o.OrderID
								AND o.OrderDate BETWEEN '1996-08-01' AND '1996-08-07'
			  JOIN Products p ON p.ProductID = d.ProductID
			  RIGHT JOIN Categories c ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID
ORDER BY Total DESC;
