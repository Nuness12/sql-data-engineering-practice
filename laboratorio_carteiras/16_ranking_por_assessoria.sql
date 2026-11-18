/*16. Ranking de assessorias
Classifique as assessorias pela quantidade de carteiras distribuídas, incluindo empates.
Conceitos: DENSE_RANK, CTE*/

WITH TOTAL_DISTRIBUIDO AS (
SELECT 
    assessoria_id,
    COUNT(CARTEIRA_ID) AS TOTAL_DISTRIBUIDO
FROM DISTRIBUICOES 
GROUP BY assessoria_id
)

SELECT 
    A.NOME,
    B.TOTAL_DISTRIBUIDO,
    DENSE_RANK() 
        OVER(ORDER BY TOTAL_DISTRIBUIDO DESC) AS CLASSIFICACAO
FROM assessorias AS A
JOIN TOTAL_DISTRIBUIDO AS B
    ON A.assessoria_id = B.assessoria_id