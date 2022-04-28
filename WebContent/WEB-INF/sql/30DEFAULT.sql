USE mydb1;

-- DEFAULT : 값이 명시되지 않았을 때 기본값
CREATE TABLE mytable17 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT 'hello'
);

DESC mytable17;
SELECT * FROM mytable17;
INSERT INTO mytable17 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable17 (col1, col2) VALUES ('abc', null);
INSERT INTO mytable17 (col1) VALUES ('hi'); -- col2 명시 하지 않을시 기본값 들어감