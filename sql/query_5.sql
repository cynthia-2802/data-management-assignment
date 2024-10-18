-- Query 5: Number of Lawyers with Each Qualification
SELECT 
    q.qualification_name,
    COUNT(lq.lawyer_id) AS number_of_lawyers
FROM 
    qualification q
    LEFT JOIN lawyer_qualification lq ON q.qualification_id = lq.qualification_id
GROUP BY 
    q.qualification_name
ORDER BY 
    q.qualification_name;
