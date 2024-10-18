-- Query 4: Average Duration of Meetings Per Case Type
SELECT 
    ct.case_type_name,
    AVG(EXTRACT(EPOCH FROM (m.end_datetime - m.start_datetime)) / 60) AS average_duration_minutes
FROM 
    meeting m
    INNER JOIN law_case c ON m.case_id = c.case_id
    INNER JOIN case_type ct ON c.case_type_id = ct.case_type_id
GROUP BY 
    ct.case_type_name
ORDER BY 
    ct.case_type_name;
