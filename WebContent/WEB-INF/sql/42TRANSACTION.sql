USE mydb2;

DELETE FROM Reply WHERE board_id = 21;
-- ROLLBACK
DELETE FROM Board
WHERE id = 21;
COMMIT;

SELECT * FROM Reply WHERE board_id = 21;