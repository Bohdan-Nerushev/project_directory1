-- №12
SELECT 
    s.student_id,
    s.first_name,
    s.last_name,
    g.grade,
    g.grade_date
FROM 
    Students s
JOIN 
    Grades g ON s.student_id = g.student_id
JOIN 
    Subjects sub ON g.subject_id = sub.subject_id
WHERE 
    s.group_id = 1 AND sub.subject_name = 'Німецька'
AND 
    g.grade_date = (
        SELECT MAX(grade_date)
        FROM Grades
        WHERE subject_id = sub.subject_id
    )
ORDER BY 
    s.student_id;







