
-- 제2정규형(second Nomal Form) 즉, 2NF (책 369)
-- 규칙1: 1NF여야 한다.
-- 규칙2: 부분적 함수 의존이 없다.
  -- 키가 아닌 열이 합성키의 일부에 종속되는 경우 (책 363쪽)

-- 제3정규형(third normal form, 3nf) 3NF
-- 제2정규형이여야 하고,
-- 이행적 종속이 없다. (364쪽)
  -- 키가 아닌 열이 키가 아닌 다른 열에 종속되는 경우
  
CREATE TABLE Courses (
	course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    instructor VARCHAR(255),
    instructor_phone VARCHAR(255)
);

DROP TABLE Courses;

DROP TABLE course;

CREATE TABLE course (
	course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(255),
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id)
);

CREATE TABLE instructor (
	instructor_id INT PRIMARY KEY AUTO_INCREMENT,
	instructor_name VARCHAR(255),
    instructor_phone VARCHAR(255)
);