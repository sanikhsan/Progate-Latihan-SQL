-- get the specified data for the top 5 products with the highest sales
SELECT items.id, items.name, (items.price * COUNT(item_id)) AS "sales total"
FROM items
JOIN sales_records
ON items.id = sales_records.item_id
GROUP BY items.id
ORDER BY "sales total" DESC
LIMIT 5
;