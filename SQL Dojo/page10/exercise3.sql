-- get all rows with a higher sales total than the item "grey hoodie"
SELECT items.id, items.name, items.price * COUNT(sales_records.item_id) AS "sales total"
FROM items
JOIN sales_records
ON items.id = sales_records.item_id
GROUP BY items.id
HAVING (items.price * COUNT(sales_records.item_id)) > (
  SELECT items.price * COUNT(sales_records.item_id)
  FROM items
  JOIN sales_records
  ON items.id = sales_records.item_id
  WHERE name = "grey hoodie"
)
ORDER BY items.id ASC
;