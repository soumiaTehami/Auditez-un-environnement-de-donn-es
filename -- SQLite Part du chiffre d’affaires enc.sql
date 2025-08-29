-- SQLite  Part du chiffre d’affaires encaissé par employé


SELECT v.id_employe,
       e.prenom || ' ' || e.nom AS employe,
       SUM(p.prix) AS chiffre_affaires,
       ROUND(SUM(p.prix) * 100.0 / 
            (SELECT SUM(p2.prix)
             FROM "Vente_Détail" v2
             JOIN Produits p2 ON v2.EAN = p2.EAN), 2) AS part_pourcentage
FROM "Vente_Détail" v
JOIN Produits p ON v.EAN = p.EAN
JOIN Employes e ON v.id_employe = e.id_employe
GROUP BY v.id_employe, employe
ORDER BY chiffre_affaires DESC;

SELECT name FROM sqlite_master WHERE type='table';

