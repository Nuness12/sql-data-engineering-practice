-- Plataforma: DataLemur
-- Exercício: User's Third Transaction
-- Objetivo: Recuperar a terceira transação realizada por cada usuário.
-- Conceitos: ROW_NUMBER, PARTITION BY, ORDER BY, CTE
-- Link: https://datalemur.com/questions/sql-third-transaction
-- Minha resolução:
WITH TRANSACOES_RANK AS (
SELECT 
    user_id,
    spend,
    transaction_date,
    DENSE_RANK() 
        OVER(PARTITION BY USER_ID ORDER BY transaction_date ASC) AS RANKING
FROM transactions
)

SELECT 
    user_id,
    spend,
    transaction_date
FROM TRANSACOES_RANK
WHERE 
    RANKING = 3;