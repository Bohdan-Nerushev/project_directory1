-- №2
SELECT 
    s.student_id, 
    s.first_name, 
    s.last_name, 
    AVG(g.grade) AS average_grade
FROM 
    Students s
JOIN 
    Grades g ON s.student_id = g.student_id
JOIN 
    Subjects sub ON g.subject_id = sub.subject_id
WHERE 
    sub.subject_name = 'Хімія'
GROUP BY 
    s.student_id, s.first_name, s.last_name
ORDER BY 
    average_grade DESC
LIMIT 1;
