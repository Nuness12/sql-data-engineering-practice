SELECT 
    carteira_id,
    SALDO
FROM carteiras
WHERE
    (SALDO IS NULL OR SALDO <0 OR carteira_id IS NULL)