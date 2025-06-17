WITH cte AS (
SELECT s.user_id AS user_id, COUNT(*) tot_cnt,
SUM(CASE WHEN action = "confirmed" THEN 1 ELSE 0 END) AS con_cnt
FROM Signups s LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id)

SELECT user_id, ROUND(con_cnt / tot_cnt,2) AS confirmation_rate
FROM cte