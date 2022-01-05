-- get the user id and name of users who purchased "sandals"
SELECT DISTINCT users.id, users.name
FROM sales_records
JOIN users
ON sales_records.user_id = users.id
JOIN items
ON items.id = sales_records.item_id
WHERE sales_records.item_id = 18
ORDER BY users.id ASC
;