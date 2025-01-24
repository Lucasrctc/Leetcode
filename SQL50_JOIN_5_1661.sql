SELECT 
a.machine_id, AVG(b.timestamp - a.timestamp)::numeric(20, 3) AS processing_time
FROM 
activity as a
INNER JOIN activity as b
ON
a.machine_id = b.machine_id AND
a.process_id = b.process_id AND
a.activity_type = 'start' AND
a.activity_type != b.activity_type
GROUP BY
a.machine_id