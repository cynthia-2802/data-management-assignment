-- Query 3: Number of Meetings Held in Each Meeting Room
SELECT 
    mr.room_name,
    COUNT(m.meeting_id) AS number_of_meetings
FROM 
    meeting_room mr
    LEFT JOIN meeting m ON mr.room_id = m.room_id
GROUP BY 
    mr.room_name
ORDER BY 
    mr.room_name;
