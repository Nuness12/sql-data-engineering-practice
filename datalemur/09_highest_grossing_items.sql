-- Plataforma: DataLemur
-- Exercício: Highest-Grossing Items
-- Objetivo: Encontrar os dois produtos com maior receita em cada categoria.
-- Conceitos: CTE, SUM, GROUP BY, RANK, PARTITION BY
-- Link: https://datalemur.com/questions/sql-highest-grossing
-- Minha resolução:

WITH ranked_spending_cte AS 
(
SELECT 
  category, 
  product, 
  SUM(spend) AS total_spend,
  RANK() OVER (
    PARTITION BY category 
    ORDER BY SUM(spend) DESC) AS ranking 
FROM product_spend
WHERE EXTRACT(YEAR FROM transaction_date) = 2022
GROUP BY category, product
)

SELECT 
  category, 
  product, 
  total_spend 
FROM ranked_spending_cte 
WHERE ranking <= 2 
ORDER BY category, ranking;ß