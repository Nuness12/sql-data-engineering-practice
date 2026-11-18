-- Plataforma: DataLemur
-- Exercício: Second Highest Salary
-- Objetivo: Encontrar o segundo maior salário distinto entre os funcionários.
-- Conceitos: Subquery, DISTINCT, ORDER BY, LIMIT
-- Link: https://datalemur.com/questions/sql-second-highest-salary
-- Minha resolução:

WITH MAIOR_SALARIO AS (
SELECT 
    MAX(salary) AS MAIOR_SALARIO
FROM employee
)

SELECT 
    MAX(salary) AS segundo_maior
FROM employee
WHERE 
    salary < (SELECT maior_salario FROM maior_salario);