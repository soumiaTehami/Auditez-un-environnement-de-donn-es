-- SQLite  Nombre de nouveaux clients insérés par jour
SELECT
    date,
    COUNT(DISTINCT id_ligne) AS nombre_clients_ajoutes
FROM
    Logs
WHERE
    action = 'INSERT' AND table_insert = 'Client'
GROUP BY
    date
ORDER BY
    date;