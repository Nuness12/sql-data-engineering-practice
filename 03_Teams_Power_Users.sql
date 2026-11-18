-- Plataforma: DataLemur
-- Exercício: Teams Power Users
-- Objetivo: Encontrar os dois usuários que mais enviaram mensagens em agosto de 2022.
-- Conceitos: GROUP BY, COUNT, ORDER BY, LIMIT, filtros de data
-- Link: https://datalemur.com/questions/teams-power-users
-- Minha resolução:
SELECT 
    sender_id,
    COUNT(message_id) AS message_count
FROM messages
WHERE
    DATE(sent_date) >= '08/01/2022' 
    AND DATE(sent_date) < '08/30/2022' 
    GROUP BY 1
ORDER BY
    message_count DESC
LIMIT 2;