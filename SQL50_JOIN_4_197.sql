SELECT t.id
FROM
Weather as y INNER JOIN Weather as t
on y.recordDate = t.recordDate - 1
WHERE y.temperature < t.temperature