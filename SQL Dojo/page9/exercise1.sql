-- get the name and number of items for users who have purchased 10 items or more
SELECT users.id, users.name, COUNT(user_id) AS "number"
FROM sales_records
JOIN users
ON sales_records.user_id = users.id
GROUP BY user_id
HAVING COUNT(user_id) >= 10
;