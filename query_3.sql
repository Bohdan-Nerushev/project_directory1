-- №3
SELECT 
    g.subject_id,
    sub.subject_name,
    AVG(g.grade) AS average_grade
FROM 
    Grades g
JOIN 
    Subjects sub ON g.subject_id = sub.subject_id
WHERE 
    sub.subject_name = 'Математика'
GROUP BY 
    g.subject_id, sub.subject_name;
