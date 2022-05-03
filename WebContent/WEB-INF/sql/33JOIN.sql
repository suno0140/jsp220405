-- JOIN

USE mydb2;

SELECT * FROM Board; -- 4개열, 4개 행
SELECT * FROM Reply; -- 4개열, 6개 행

-- 위 두개의 테이블을 결합하는 방법 (회사마다 조인하는방법 다름)

SELECT * FROM Board, Reply; -- 결합 8개 열, 24개
SELECT * FROM Reply, Board; -- 결합(Cartesian Product) : 8개 열, 24개 행
SELECT * FROM Board JOIN Reply; -- 결합 또다른 문법
SELECT * FROM Board JOIN Reply ON Board.id = Reply.board_id; -- 공통된 정보만 가져오기(INNER JOIN)
SELECT * FROM Board, Reply WHERE Board.id = Reply.board_id; -- INNER JOIN (다른문법)
SELECT * FROM Board JOIN Reply WHERE Board.id = Reply.board_id; -- INNER JOIN (다른문법)