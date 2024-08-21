CREATE TABLE subject (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO subject (name) VALUES ('Algebra');
INSERT INTO subject (name) VALUES ('Biology');
INSERT INTO subject (name) VALUES ('World History');

CREATE TABLE student_subject (
    student_id INT,
    subject_id INT,
    grade INT,
    PRIMARY KEY (student_id, subject_id),
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (subject_id) REFERENCES subject(id)
);

INSERT INTO student_subject (student_id, subject_id, grade)
SELECT id, (SELECT id FROM subject WHERE name = 'Algebra'), 3 FROM student WHERE name = 'John';

INSERT INTO student_subject (student_id, subject_id, grade)
SELECT id, (SELECT id FROM subject WHERE name = 'Biology'), 2 FROM student WHERE name = 'John';

INSERT INTO student_subject (student_id, subject_id, grade)
SELECT id, (SELECT id FROM subject WHERE name = 'World History'), 5 FROM student WHERE name = 'John';

INSERT INTO student_subject (student_id, subject_id, grade)
SELECT id, (SELECT id FROM subject WHERE name = 'Algebra'), 4 FROM student WHERE name = 'Adam';

INSERT INTO student_subject (student_id, subject_id, grade)
SELECT id, (SELECT id FROM subject WHERE name = 'Biology'), 3 FROM student WHERE name = 'Adam';

INSERT INTO student_subject (student_id, subject_id, grade)
SELECT id, (SELECT id FROM subject WHERE name = 'World History'), 2 FROM student WHERE name = 'Adam';

INSERT INTO student_subject (student_id, subject_id, grade)
SELECT id, (SELECT id FROM subject WHERE name = 'Algebra'), 5 FROM student WHERE name = 'Lucy';

INSERT INTO student_subject (student_id, subject_id, grade)
SELECT id, (SELECT id FROM subject WHERE name = 'Biology'), 4 FROM student WHERE name = 'Lucy';

INSERT INTO student_subject (student_id, subject_id, grade)
SELECT id, (SELECT id FROM subject WHERE name = 'World History'), 3 FROM student WHERE name = 'Lucy';