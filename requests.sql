-- R1
SELECT * FROM etudiant;

-- R2
SELECT *
FROM cours
WHERE credit > 3;

-- R3
SELECT *
FROM professeur
WHERE departement = "Informatique";

-- R4
SELECT *
FROM etudiant
WHERE date_naissance > '2000-12-31';

-- R5
SELECT email, telephone
FROM etudiant;

-- R6
SELECT *
FROM cours
WHERE libelle LIKE "Programmation%";

-- R7
SELECT nom, prenom
FROM professeur
WHERE nom LIKE "%e%";

-- R8
SELECT *
FROM etudiant
WHERE telephone LIKE "06%";

-- R9
SELECT *
FROM etudiant
WHERE adresse LIKE "%rue%";

-- R10
SELECT *
FROM professeur
ORDER BY nom;

-- R11
SELECT e.*
FROM etudiant e, inscription
WHERE e.id_etudiant = inscription.id_etudiant AND inscription.note > 15;

-- R12
SELECT c.*
FROM cours c, professeur p, responsablecours rc
WHERE p.departement = "Mathématiques" AND p.id_professeur = rc.id_professeur AND c.id_cours = rc.id_cours;

-- R13
SELECT *
FROM etudiant e, inscription i
WHERE e.id_etudiant = i.id_etudiant AND i.note IS NULL;

-- R14
SELECT p.nom, p.prenom, COUNT(rc.id_cours) AS nombre_cours
FROM professeur p, responsablecours rc
WHERE p.id_professeur = rc.id_professeur
GROUP BY p.id_professeur
HAVING nombre_cours >= 2;

-- R15
SELECT *
FROM cours
WHERE description LIKE "%introduction%";

-- R16
SELECT *
FROM cours
WHERE credit = 3;

-- R17
SELECT *
FROM etudiant
WHERE adresse LIKE "%Paris%";

-- R18
SELECT *
FROM etudiant
WHERE (DATE_FORMAT(NOW(), '%Y') - YEAR(date_naissance)) > 23;

-- R19
SELECT c.id_cours
FROM cours c
WHERE c.id_cours NOT IN (SELECT i.id_cours
                         FROM inscription i);

-- R20
SELECT * FROM inscription NATURAL JOIN cours;

-- R21
SELECT p.nom, p.prenom
FROM professeur p, responsablecours rc
WHERE rc.id_cours NOT IN (SELECT i.id_cours
                          FROM inscription i
                          WHERE i.id_cours = rc.id_cours)
AND rc.id_professeur = p.id_professeur;
