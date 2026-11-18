-- Plataforma: DataLemur
-- Exercício: Tweets' Rolling Averages
-- Objetivo: Calcular a média móvel de três dias de tweets por usuário.
-- Conceitos: AVG, OVER, PARTITION BY, ROWS BETWEEN, ROUND
-- Link: https://datalemur.com/questions/rolling-average-tweets
-- Minha resolução:
SELECT 
    user_id,
    tweet_date,
    ROUND(
        AVG(tweet_count) 
            OVER(PARTITION BY user_id ORDER BY tweet_date ASC 
                ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
        ,2) AS DATE_RANKING
FROM tweets
;