SELECT u.city,
       count(t.status) as total_orders
FROM users u
INNER JOIN trades t
  ON t.user_id = u.user_id
WHERE 
  t.status = 'Completed'
GROUP BY u.city
ORDER BY total_orders DESC
LIMIT(3)
