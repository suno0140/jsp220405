USE w3schools;

SELECT * FROM Employees;
SELECT FirstName FROM Emplyess;
SELECT CustomerName, Address FROM Customers;

-- WHERE : 어떤 Row(Record)를 선택할 지 결정하는 키워드

-- 예제1) 나라가 멕시코인 고객들 조회
SELECT * FROM Customers
WHERE Country = 'Mexico';

-- 예제2) 나라가 독일인 고객들 조회
SELECT * FROM Customers
WHERE Country = 'Germany';

SELECT Country FROM Customers;

-- 작은따옴표 : 문자열값

-- 예제3) 고객ID가 1번인 고객조회
SELECT * FROM Customers WHERE CustomerID = 1; -- 수형식은 작은 따옴표 안씀, 근데 써도 가능
SELECT * FROM Customers WHERE CustomerID = '90';
SELECT * FROM Customers WHERE Country = 'Germany'; -- 문자형식은 작은따옴표 꼭 작성해야함

-- 예제4) 1번곡개의 이름조회
SELECT CustomerName FROM Customers WHERE CustomerID = 1;

SELECT CustomerName, Address, City, PostalCode, Country FROM Customers WHERE CustomerID = 1;

SELECT * FROM Employees WHERE EmployeeID=1;

SELECT CustomerName, City, Country, PostalCode FROM Customers;
SELECT FirstName, LastName, BirthDate FROM Employees;