-- SQLite  le CA du 14 août
SELECT SUM(p.prix) AS chiffre_affaires
FROM "Vente_Détail" v
JOIN Produits p ON v.EAN = p.EAN
JOIN Calendrier c ON v."Date achat" = c.date
WHERE c.date = '2024-08-14';
