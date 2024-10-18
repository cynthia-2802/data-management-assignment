-- Query 1: Number of Cases Handled by Each Lawyer
SELECT 
    l.lawyer_id, 
    l.first_name, 
    l.last_name, 
    COUNT(lca.case_id) AS number_of_cases
FROM 
    lawyer l
    INNER JOIN lawyer_case_assignment lca ON l.lawyer_id = lca.lawyer_id
GROUP BY 
    l.lawyer_id, 
    l.first_name, 
    l.last_name
ORDER BY 
    l.lawyer_id;
