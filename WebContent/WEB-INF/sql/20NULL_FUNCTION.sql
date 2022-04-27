USE w3schools;

SELECT * FROM Customers;

-- Products2 테이블 만들기
CREATE TABLE Products2 (
	P_Id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(20),
    UnitPrice DEC(4, 2),
    UnitsInStock INT,
    UnitsOnOrder INT
    );
    
INSERT INTO Products2 (ProductName, UnitPrice, UnitsInStock, UnitsOnOrder)
VALUES ('JarlsBerg', 10.45, 16, 15),
	   ('Mascarpone', 32.56, 23, null),
	   ('Gorgonzola', 15.67, 9, 20);
       
SELECT * FROM Products2;

SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)
FROM Products2;

SELECT ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0))
FROM Products2;

SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products2;

-- ifnull, coalesce 차이
-- ifnull : 파라미터수가 2개
-- coalesce : 파라미터수가 1개 이상

SELECT IFNULL(null, '대체값');
SELECT COALESCE('대체값1');
