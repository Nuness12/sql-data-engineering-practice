
/*17. Última alteração de cada carteira
Retorne o registro mais recente de historico_clusters para cada carteira.
Conceitos: ROW_NUMBER*/
WITH DATA_RECENTE AS (
SELECT 
    carteira_id,
    data_alteracao,
    ROW_NUMBER() 
        OVER (PARTITION BY carteira_id ORDER BY data_alteracao DESC) AS REGISTRO_RECENTE
FROM historico_clusters
)

SELECT 
    carteira_id,
    data_alteracao AS data_alteracao_RECENTE
FROM DATA_RECENTE
WHERE 
    REGISTRO_RECENTE = 1