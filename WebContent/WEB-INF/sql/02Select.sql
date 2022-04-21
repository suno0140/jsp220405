SELECT * FROM Customers;
SELECT Country FROM Customers;

-- DISTNCT : 중복 제거 (괄호 생략가능)
SELECT DISTINCT(Country) FROM Customers;
SELECT DISTINCT Country FROM Customers;

-- Suppliers 테이블에서 중복없이 Country 컬럼 조회
SELECT Country FROM Suppliers;
