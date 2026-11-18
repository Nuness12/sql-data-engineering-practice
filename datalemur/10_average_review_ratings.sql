-- Plataforma: DataLemur
-- Exercício: Average Review Ratings
-- Objetivo: Calcular a média mensal das avaliações de cada produto.
-- Conceitos: EXTRACT, AVG, ROUND, GROUP BY, ORDER BY
-- Link: https://datalemur.com/questions/sql-avg-review-ratings
-- Minha resolução:
SELECT
    EXTRACT (MONTH from submit_date) AS MES,
    product_id,
    round(
        AVG(stars)
        ,2) AS avg_stars

FROM reviews
GROUP BY MES,product_id
ORDER BY 
    mes, product_id