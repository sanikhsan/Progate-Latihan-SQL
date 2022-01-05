-- get the total sales and the date for each day
SELECT purchased_at, SUM(items.price) AS "total sales"
FROM sales_records
JOIN items
ON items.id = sales_records.item_id
GROUP BY purchased_at
;