SELECT p.page_id
FROM pages p  
FULL JOIN page_likes pl 
  ON p.page_id = pl.page_id
WHERE pl.user_id IS NULL
ORDER BY page_id 
