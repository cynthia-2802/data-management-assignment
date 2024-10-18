-- Query 2: Total Revenue Generated Per Case Type
SELECT 
    ct.case_type_name,
    SUM(ct.fixed_price) AS total_revenue
FROM 
    law_case c
    INNER JOIN case_type ct ON c.case_type_id = ct.case_type_id
GROUP BY 
    ct.case_type_name
ORDER BY 
    ct.case_type_name;
