CREATE DATABASE mydb3;
USE mydb3;

-- 중복되는 값이 없도록, NULL로 남지 않도록 (이 2가지 주의)
-- 정규화 (Normal Form)
-- 제1정규화 (First Normal Form) 1NF
-- 제2정규화 (Second Normal Form) 2NF
-- 제3정규화 (Thrid Normal Form) 3NF
-- 순서대로 만족을 해야 다음 정규화를 만들수있다. (독립적존재가 아니다.)

-- 제1정규화
-- 규칙1: 열은 원자적 값(atomic)만을 포함한다. (원자적 이란 주관적판단 상황마다 다를수 있다.)
-- 규칙2: 같은 데이터가 여러 열에 반복되지 말아야 한다. 

-- 이름, 주소
CREATE TABLE Person1 (
	name VARCHAR(200) PRIMARY KEY,
    address VARCHAR(200)
);
SET autocommit = 1; -- auto commit enalbe
INSERT INTO Person1 (name, address) VALUES ('A', '서울시 강남구 역삼동111');

COMMIT;

CREATE TABLE toy (
	toy_id INT PRIMARY KEY,
    toy VARCHAR(255)
    );
    
CREATE TABLE toy_color (
	toy_id INT,
    color VARCHAR(255),
    FOREIGN KEY (toy_id) REFERENCES toy(toy_id),
    PRIMARY KEY (toy_id, color)
);

DROP TABLE toy_color;
CREATE TABLE toy_color (
	toy_color_id INT PRIMARY KEY AUTO_INCREMENT, 
    -- 키 컬럼 하나 추가하면 제1,2정규화 까지 대부분 만족시켜줄수있다(딱히 의미없는 컬럼)
	toy_id INT,
	color VARCHAR(255),
	FOREIGN KEY (toy_id) REFERENCES toy(toy_id)
);