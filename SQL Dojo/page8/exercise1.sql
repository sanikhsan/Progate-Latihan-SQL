-- get the number of sales and date for each day
SELECT purchased_at, COUNT(item_id) AS "sales"
FROM sales_records
GROUP BY purchased_at;