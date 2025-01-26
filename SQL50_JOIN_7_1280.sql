SELECT 
s.student_id, student_name, sub.subject_name, SUM(CASE WHEN sub.subject_name = e.subject_name THEN 1 ELSE 0 END) as attended_exams
FROM
Subjects as sub
INNER JOIN
Students as s
ON TRUE
LEFT JOIN
Examinations as e
ON
s.student_id = e.student_id
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name