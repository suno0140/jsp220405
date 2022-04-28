USE mydb1;
-- UNIQUE : 해당 컬럼의 값이 중복되면 안됨

CREATE TABLE mytable10 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE
);

DESC mytable10;
INSERT INTO mytable10 (col1, col2) VALUES('a', 'b');
INSERT INTO mytable10 (col1, col2) VALUES('c', 'd');
INSERT INTO mytable10 (col1, col2) VALUES('c', 'e');
INSERT INTO mytable10 (col1, col2) VALUES('d', 'e'); -- 오류남 col2가 중복되서 불가능
INSERT INTO mytable10 (col1, col2) VALUES('c', null);
INSERT INTO mytable10 (col1, col2) VALUES('d', null); -- null 은 값이 없는거라 중복도 아니다.

SELECT * FROM mytable10;

-- unique, not null 조합
CREATE TABLE mytable11 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE NOT NULL
);

DESC mytable11;

