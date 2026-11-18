-- Plataforma: DataLemur
-- Exercício: Page With No Likes
-- Objetivo: Identificar páginas que não possuem curtidas.
-- Conceitos: LEFT JOIN, IS NULL, ORDER BY
-- Link: https://datalemur.com/questions/sql-page-with-no-likes
-- Minha resolução:
SELECT
    p.page_id
FROM pages AS p
LEFT JOIN page_likes AS pl
    ON p.page_id = pl.page_id
WHERE
    pl.page_id IS NULL
ORDER BY
    p.page_id ASC;

