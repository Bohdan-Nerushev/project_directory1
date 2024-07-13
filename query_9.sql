-- №9
SELECT 
    sub.subject_id,
    sub.subject_name
FROM 
    Subjects sub
JOIN 
    Grades g ON sub.subject_id = g.subject_id
WHERE 
    g.student_id = '7'
GROUP BY 
    sub.subject_id, sub.subject_name;




