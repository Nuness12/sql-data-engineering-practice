
--15. Participação por assessoria
--Calcule qual percentual de todas as distribuições pertence a cada assessoria, com duas casas decimais.
--Conceitos: COUNT, ROUND, subquery

SELECT
A.NOME,
ROUND(
	100.0 * COUNT(B.distribuicao_id) / 
 	(SELECT COUNT(*) FROM DISTRIBUICOES),
  	2
  ) AS PERC
FROM ASSESSORIAS AS A
JOIN DISTRIBUICOES AS B
ON A.assessoria_id = B.assessoria_id 
GROUP BY A.NOME