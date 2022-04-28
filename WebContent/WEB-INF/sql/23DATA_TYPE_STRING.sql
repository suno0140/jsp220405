USE mydb1;

-- CHAR : 고정길이 문자열
CREATE TABLE MyTable4 (
	col1 CHAR,
    col2 CHAR(1),
    col3 CHAR(2),
    col4 CHAR(5)
);

DESC MyTable4;

SELECT * FROM MyTable4;

INSERT INTO MyTable4 (col1)
VALUES ('a');
INSERT INTO MyTable4 (col1)
VALUES ('ab'); -- 불가능 고정size에 안맞음
INSERT INTO MyTable4 (col3)
VALUES ('ab'); -- 가능 고정size에 맞음
INSERT INTO MyTable4 (col3)
VALUES ('b'); -- 가능 b하나만 보이지만 고정size 2칸을 차지하고있음.
INSERT INTO MyTable4 (col4)
VALUES ('abcdef'); -- 불가능 size 초과
INSERT INTO MyTable4 (col4)
VALUES ('abc'); -- 가능 하지만 size 5개 공간차지
INSERT INTO MyTable4 (col4)
VALUES ('가나다라마');

-- 트림(trim) disable
SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';

SELECT * FROM MyTable4;

-- 테이블 지우기 (주의해서 사용하기)
DROP TABLE MyTable5;

-- VARCHAR : 가변길이
CREATE TABLE MyTable5 (
	col1 CHAR(10),
    col2 VARCHAR(10)
);

SELECT * FROM MyTable5;
INSERT INTO MyTable5 (col1, col2)
VALUES ('a', 'a'); -- 앞에 a는 10칸을 차지 , 뒤에 a는 한칸차지
INSERT INTO MyTable5 (col2)
VALUES ('0123456789'); -- size(10) 가능
INSERT INTO MyTable5 (col2)
VALUES ('01234567899724'); -- size 넘어가면 되지만 뒤에 짤림


