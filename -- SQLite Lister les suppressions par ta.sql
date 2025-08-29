-- SQLite Lister les suppressions par table
SELECT
    DATE(L.date) AS date_creation_client,
    COUNT(T2.ID_ticket) AS nombre_ventes,
    SUM(T2.prix) AS CA_des_nouveaux_clients
FROM
    Logs AS L
INNER JOIN
    Clients AS T1 ON L.id_ligne = T1.CUSTOMER_ID
INNER JOIN
    Vente_Detail AS T2 ON T1.CUSTOMER_ID = T2.CUSTOMER_ID
WHERE
    L.action = 'INSERT' AND L.table_insert = 'Client'
GROUP BY
    DATE(L.date)
ORDER BY
    date_creation_client;