/*18. Mudança de cluster

Compare o cluster de cada registro com o cluster anterior da mesma carteira e identifique mudanças.
Conceitos: LAG, PARTITION BY*/
WITH HISTORICO AS (
    SELECT
        carteira_id,
        data_alteracao,
        cluster AS CLUSTER_ATUAL,
        LAG(cluster) OVER (
            PARTITION BY carteira_id
            ORDER BY data_alteracao ASC
        ) AS CLUSTER_ANTERIOR
    FROM historico_clusters
)

SELECT
    carteira_id,
    data_alteracao,
    CLUSTER_ATUAL,
    CLUSTER_ANTERIOR,
    CASE
        WHEN CLUSTER_ANTERIOR IS NULL
            THEN 'PRIMEIRO REGISTRO'
        WHEN CLUSTER_ATUAL <> CLUSTER_ANTERIOR
            THEN 'MUDOU'
        ELSE 'NAO MUDOU'
    END AS STATUS_CLUSTER
FROM HISTORICO;