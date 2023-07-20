# Write your MySQL query statement below
SELECT r.contest_id, ROUND(((COUNT(r.contest_id)/(SELECT count(*) FROM users))*100), 2) AS percentage
FROM Users u
LEFT JOIN Register r
ON u.user_id = r.user_id
GROUP BY contest_id
ORDER BY percentage desc, contest_id asc;
