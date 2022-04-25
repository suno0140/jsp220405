USE w3schools;

SELECT * FROM Customers ORDER BY CustomerID DESC;

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (92, 'Donald', 'President', 'NewYork', 'Seattle', '00000', 'USA');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (93, 'son', 'Heung-min', 'Tottenum', 'London', 1111, 'UK');

-- 모든 컬럼에 데이터 입력시 컬럼명 생략 가능 (보통은 다 쓴다.)
INSERT INTO Customers
VALUES (94, 'Cha', 'Bum', 'BundesLiga', 'Köln', '22222', 'Germany');

-- DESC : 테이블 Schem(뼈대) 조회 (DESCRIBE)
DESCRIBE Customers;
DESC Customers;

-- auto_increment 컬럼은 insert 할 때 값 생략 가능
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Oscar', 'Isaac', 'london', 'London', 'B-999', 'UK');

-- 컬럼명 순서는 상관 없이 네임 벨류 순서만 잘 맞춰주면된다.
INSERT INTO Customers (Country, PostalCode, City, Address, ContactName, CustomerName)
VALUES ('USA', 'A112', 'Seattle', 'Hotel', 'Rap Monster', 'RM');

SELECT * FROM Employees ORDER BY EmployeeID DESC;
DESC Employees;
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('Jisung', 'Park', '1999-01-01', 'pic1', 'manchester united');


-- 모든 컬럼을 나열하지 않아도 됨
INSERT INTO Employees (LastName, FirstName, BirthDate, Notes)
VALUES ('Lee', 'sunshin', '1900-01-01', 'general'); -- 열을 생략하면 null로 남게됨.

-- NULL : 값이 없다. (null이라는 값이 들어간게 아니다.)

-- insert시 null 명시 가능
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('Harry', 'Kane', '2000-01-01', NULL, 'soccer');

