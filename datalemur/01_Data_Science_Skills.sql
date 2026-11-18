-- Plataforma: DataLemur
-- Exercício: Data Science Skills
-- Objetivo: Identificar candidatos que possuem todas as habilidades exigidas.
-- Conceitos: WHERE, IN, GROUP BY, HAVING, COUNT
-- Link: https://datalemur.com/questions/matching-skills
-- Minha resolução:
SELECT
  candidate_id
FROM candidates
WHERE
  skill IN ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING count(*) = 3;