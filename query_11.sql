-- №11
SELECT 
    AVG(g.grade) AS average_grade
FROM 
    Grades g
JOIN 
    Subjects sub ON g.subject_id = sub.subject_id
JOIN 
    Teachers t ON sub.teacher_id = t.teacher_id
WHERE 
    g.student_id = 10 AND t.teacher_id = 1;






