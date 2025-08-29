-- SQLite le chiffre d’affaires par client pour le top 10 des clients ;
SELECT 
    vd.CUSTOMER_ID,
    SUM(p.prix) AS chiffre_affaires
FROM "Vente_Détail" vd
JOIN Produits p ON vd.EAN = p.EAN
GROUP BY vd.CUSTOMER_ID
ORDER BY chiffre_affaires DESC
LIMIT 10;
