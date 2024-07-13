-- №5
SELECT 
    sub.subject_id,
    sub.subject_name
FROM 
    Subjects sub
JOIN 
    Teachers t ON sub.teacher_id = t.teacher_id
WHERE 
    t.teacher_id = '7';

