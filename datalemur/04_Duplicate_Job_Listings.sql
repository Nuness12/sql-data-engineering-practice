-- Plataforma: DataLemur
-- Exercício: Duplicate Job Listings
-- Objetivo: Contar empresas que publicaram vagas duplicadas.
-- Conceitos: GROUP BY, HAVING, COUNT, DISTINCT
-- Link: https://datalemur.com/questions/duplicate-job-listings
-- Minha resolução:

WITH company_duplicate AS(
SELECT
    company_id,
    title,
    count(company_id) 
FROM job_listings
GROUP BY 1,2
HAVING count(company_id) >1
)

SELECT 
    count(company_id)
FROM company_duplicate