SELECT  p.candidate_id FROM candidates p
INNER JOIN candidates t
  ON p.candidate_id = t.candidate_id
INNER JOIN candidates pt  
  ON p.candidate_id = pt.candidate_id
WHERE 
  p.skill LIKE 'Python' AND
  t.skill LIKE 'Tableau' AND
  pt.skill LIKE 'PostgreSQL';
