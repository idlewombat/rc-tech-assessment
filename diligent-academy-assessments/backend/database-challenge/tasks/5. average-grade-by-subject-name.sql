SELECT subject.name, AVG(student_subject.grade) AS average_grade
FROM student_subject
JOIN subject ON student_subject.subject_id = subject.id
WHERE subject.name = 'Algebra'
GROUP BY subject.name;