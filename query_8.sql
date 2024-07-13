-- №8
SELECT 
    t.teacher_id,
    t.first_name,
    t.last_name,
    AVG(g.grade) AS average_grade
FROM 
    Teachers t
JOIN 
    Subjects sub ON t.teacher_id = sub.teacher_id
JOIN 
    Grades g ON sub.subject_id = g.subject_id
WHERE 
    t.teacher_id = '1'
GROUP BY 
    t.teacher_id, t.first_name, t.last_name;





