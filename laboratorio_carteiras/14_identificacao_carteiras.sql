-- 14 Identifique quais carteiras válidas não possuem registro na tabela distribuicoes. Evite duplicidades.
--Conceitos: LEFT JOIN, IS NULL
SELECT DISTINCT
    A.carteira_id AS CARTEIRA_SEM_DISTRIBUICAO
FROM CARTEIRAS AS A
LEFT JOIN DISTRIBUICOES AS B
    ON A.carteira_id = B.carteira_id
WHERE
    A.carteira_id IS NOT NULL
    AND B.carteira_id IS NULL;