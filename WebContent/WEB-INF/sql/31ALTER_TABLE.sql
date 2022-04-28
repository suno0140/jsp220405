USE mydb1;

-- CREATE TABLE : 테이블 만들기
CREATE TABLE Customers
SELECT * FROM w3schools.Customers;

DESC Customers;

-- DROP TABLE : 테이블 삭제

-- ALTER TABLE : 테이블 수정
-- 컬럼 추가
ALTER TABLE Customers
ADD Email VARCHAR(255);

ALTER TABLE Customers
ADD Email VARCHAR(255) NOT NULL DEFAULT '이메일없음';

ALTER TABLE Customers
ADD Email VARCHAR(255) AFTER ContactName; -- 컬럼 순서 입력 (생략시 마지막에 생성) 중요하지않음

-- 컬럼 삭제
ALTER TABLE Customers
DROP COLUMN Email;

-- 컬럼 수정 (삭제 만큼 신중히 해야함)
ALTER TABLE Customers
MODIFY COLUMN Email VARCHAR(10);