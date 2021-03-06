USE w3schools;

-- Orders : 주문
-- Customers : 고객
-- 주문한적 없는 고객 명 조회
SELECT c.CustomerName
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL
ORDER BY 1;

-- 고객별 주문 건수 with 0건 도 나와야 함.
SELECT c.CustomerName, COUNT(o.OrderID)
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY 2 DESC, 1;

-- 댓글 수 보이게 하는 연습에 활용
USE mydb2;
SELECT b.id, b.title, b.body, b.inserted, COUNT(r.id) numOfReply
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
WHERE b.id = 3;