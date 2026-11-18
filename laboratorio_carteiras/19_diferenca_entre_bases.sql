/*19. Diferença entre bases

Descubra quais IDs de carteiras existem na base carteiras, mas não na base distribuicoes, ignorando IDs nulos.
Conceitos: EXCEPT*/

SELECT carteira_id
FROM CARTEIRAS
WHERE carteira_id IS NOT NULL

EXCEPT 

SELECT carteira_id 
FROM DISTRIBUICOES