USE w3schools;

SELECT LastName FROM Employees;
SELECT FirstName FROM Employees;

SELECT LastName FROM Employees
UNION
SELECT FirstName FROM Employees; -- 여러 조회를 합칠 때 (합집합)

-- 1. 여러 SELECT의 컬럼 수가 같아야 한다.
-- 2. 각 컬럼의 data type 이 유사해야함.
-- 3. 컬럼이 같은 순서이어야 함.

SELECT LastName, FirstName FROM Employees
UNION
SELECT CustomerName FROM Customers; -- 컬럼 수가 달라서 안됨

SELECT LastName, BirthDate FROM Employees
UNION
SELECT CustomerName, Country FROM Customers; -- 이건 됨

SELECT EmployeeID, LastName FROM Employees
UNION
SELECT ProductName, Price FROM Products; -- 이것도 된다. (데이터타입 유사의 기준이 애매)

-- UNION : 합집합 (중복없음)
-- UNION ALL : 중복허용
SELECT LastName FROM Employees
UNION ALL
SELECT FirstName FROM Employees; -- son 과 null 이 두개씩 다 나온다.

-- 2개 이상의 조회 결과를 합칠 수 있음
SELECT Country FROM Customers
UNION
SELECT Country FROM Suppliers
UNION
SELECT City FROM Customers;
