/*20. Consolidação de indicadores

Construa uma consulta com CTEs que retorne, em uma linha, total de carteiras distintas, 
carteiras com saldo inválido, carteiras distribuídas distintas e carteiras sem distribuição.
Conceitos: CTE, COUNT, JOIN*/

WITH TOTAL_CARTEIRAS AS (
    SELECT
        COUNT(DISTINCT carteira_id) AS QTD_CARTEIRA
    FROM CARTEIRAS
),

SALDO_INVALIDO AS (
    SELECT
        COUNT(DISTINCT carteira_id) AS QTD_SALDO_INVALIDO
    FROM CARTEIRAS
    WHERE saldo IS NULL OR saldo < 0
),

DISTRIBUICOES_CARTEIRA AS (
    SELECT
        COUNT(DISTINCT B.carteira_id) AS QTD_DISTRIBUICOES
    FROM CARTEIRAS AS A
    INNER JOIN DISTRIBUICOES AS B
        ON A.carteira_id = B.carteira_id
),

NAO_DISTRIBUIDAS AS (
    SELECT
        COUNT(*) AS QTD_NAO_DISTRIBUIDO
    FROM (
        SELECT carteira_id
        FROM CARTEIRAS
        WHERE carteira_id IS NOT NULL

        EXCEPT

        SELECT carteira_id
        FROM DISTRIBUICOES
    ) AS X
)

SELECT
    A.QTD_CARTEIRA,
    B.QTD_SALDO_INVALIDO,
    C.QTD_DISTRIBUICOES,
    D.QTD_NAO_DISTRIBUIDO

FROM TOTAL_CARTEIRAS AS A
CROSS JOIN SALDO_INVALIDO AS B
CROSS JOIN DISTRIBUICOES_CARTEIRA AS C
CROSS JOIN NAO_DISTRIBUIDAS AS D;