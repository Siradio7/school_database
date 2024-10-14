CREATE DATABASE IF NOT EXISTS school_db;

USE school_db;

CREATE TABLE Etudiant (
    id_etudiant INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(40),
    prenom VARCHAR(50),
    date_naissance DATE,
    adresse VARCHAR(255),
    email VARCHAR(100) UNIQUE,
    telephone VARCHAR(15)
);

CREATE TABLE Professeur (
    id_professeur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(40),
    prenom VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    telephone VARCHAR(15),
    departement VARCHAR(100)
);

CREATE TABLE Cours (
    id_cours INT AUTO_INCREMENT PRIMARY KEY,
    libelle VARCHAR(100),
    description TEXT,
    credit INT
);

CREATE TABLE Inscription (
    id_inscription INT AUTO_INCREMENT PRIMARY KEY,
    id_etudiant INT,
    id_cours INT,
    note DECIMAL(4, 2),
    FOREIGN KEY (id_etudiant) REFERENCES Etudiant(id_etudiant),
    FOREIGN KEY (id_cours) REFERENCES Cours(id_cours)
);

CREATE TABLE ResponsableCours (
    id_professeur INT,
    id_cours INT,
    FOREIGN KEY (id_professeur) REFERENCES Professeur(id_professeur),
    FOREIGN KEY (id_cours) REFERENCES Cours(id_cours),
    PRIMARY KEY (id_professeur, id_cours)
);

INSERT INTO Etudiant (nom, prenom, date_naissance, adresse, email, telephone) VALUES
('Dupont', 'Jean', '1999-02-15', '123 rue de la Paix, Paris', 'jean.dupont@example.com', '0612345678'),
('Martin', 'Sophie', '2000-04-22', '12 avenue des Champs, Lyon', 'sophie.martin@example.com', '0623456789'),
('Leclerc', 'Paul', '1998-12-30', '45 boulevard Saint-Michel, Marseille', 'paul.leclerc@example.com', '0634567890'),
('Bernard', 'Marie', '2001-06-11', '9 rue Victor Hugo, Lille', 'marie.bernard@example.com', '0645678901'),
('Petit', 'Nicolas', '1997-08-05', '99 avenue de la République, Nantes', 'nicolas.petit@example.com', '0656789012'),
('Durand', 'Emilie', '2001-03-14', '15 rue de la Liberté, Bordeaux', 'emilie.durand@example.com', '0667890123'),
('Moreau', 'Luc', '2000-09-25', '25 rue Lafayette, Nice', 'luc.moreau@example.com', '0678901234'),
('Lefevre', 'Julie', '1999-07-20', '33 rue du Général Leclerc, Paris', 'julie.lefevre@example.com', '0689012345'),
('Garcia', 'Laura', '1998-11-03', '12 rue des Fleurs, Toulouse', 'laura.garcia@example.com', '0690123456'),
('Roux', 'Antoine', '2000-05-15', '14 rue de Verdun, Strasbourg', 'antoine.roux@example.com', '0611234567'),
('Lopez', 'Emma', '1999-02-28', '20 avenue Jean Jaurès, Montpellier', 'emma.lopez@example.com', '0621345678'),
('Morel', 'Alice', '2000-10-19', '48 rue de la Gare, Grenoble', 'alice.morel@example.com', '0632456789'),
('Fournier', 'Thomas', '1997-01-12', '5 place du Capitole, Toulouse', 'thomas.fournier@example.com', '0643567890'),
('Girard', 'Camille', '1999-08-30', '22 boulevard Carnot, Rennes', 'camille.girard@example.com', '0654678901'),
('Clement', 'Hugo', '1998-09-19', '7 rue des Rosiers, Dijon', 'hugo.clement@example.com', '0665789012'),
('Gauthier', 'Chloe', '2001-04-07', '18 rue de la République, Lille', 'chloe.gauthier@example.com', '0676890123'),
('Perrin', 'Leo', '2000-11-25', '29 rue Emile Zola, Nancy', 'leo.perrin@example.com', '0687901234'),
('Faure', 'Clara', '1997-06-16', '50 avenue Foch, Nantes', 'clara.faure@example.com', '0698012345'),
('Andre', 'Bastien', '1999-12-11', '35 avenue de la Victoire, Lyon', 'bastien.andre@example.com', '0619123456'),
('Mercier', 'Sarah', '1998-05-27', '13 rue de la Mer, Nice', 'sarah.mercier@example.com', '0620234567');

INSERT INTO Professeur (nom, prenom, email, telephone, departement) VALUES
('Durand', 'Jean', 'jean.durand@univ.com', '0612345678', 'Informatique'),
('Lefevre', 'Claire', 'claire.lefevre@univ.com', '0623456789', 'Mathématiques'),
('Martin', 'Pierre', 'pierre.martin@univ.com', '0634567890', 'Informatique'),
('Bernard', 'Elodie', 'elodie.bernard@univ.com', '0645678901', 'Physique'),
('Petit', 'Francois', 'francois.petit@univ.com', '0656789012', 'Chimie'),
('Moreau', 'Isabelle', 'isabelle.moreau@univ.com', '0667890123', 'Histoire'),
('Garcia', 'David', 'david.garcia@univ.com', '0678901234', 'Philosophie'),
('Roux', 'Marie', 'marie.roux@univ.com', '0689012345', 'Biologie'),
('Lopez', 'Pauline', 'pauline.lopez@univ.com', '0690123456', 'Mathématiques'),
('Gauthier', 'Sebastien', 'sebastien.gauthier@univ.com', '0611234567', 'Géographie'),
('Perrin', 'Julie', 'julie.perrin@univ.com', '0621345678', 'Informatique'),
('Faure', 'Nathalie', 'nathalie.faure@univ.com', '0632456789', 'Mathématiques'),
('Andre', 'Lucas', 'lucas.andre@univ.com', '0643567890', 'Physique'),
('Mercier', 'Vincent', 'vincent.mercier@univ.com', '0654678901', 'Biologie'),
('Girard', 'Anne', 'anne.girard@univ.com', '0665789012', 'Chimie'),
('Clement', 'Thomas', 'thomas.clement@univ.com', '0676890123', 'Informatique'),
('Fournier', 'Camille', 'camille.fournier@univ.com', '0687901234', 'Informatique'),
('Renaud', 'Marc', 'marc.renaud@univ.com', '0698012345', 'Philosophie'),
('Leclerc', 'Alice', 'alice.leclerc@univ.com', '0619123456', 'Géographie'),
('Simon', 'Luc', 'luc.simon@univ.com', '0620234567', 'Mathématiques');

INSERT INTO Cours (libelle, description, credit) VALUES
('Programmation Java', 'Cours sur la programmation en Java', 4),
('Bases de données', 'Introduction aux bases de données relationnelles', 3),
('Calcul différentiel', 'Etude des dérivées et intégrales', 4),
('Chimie Organique', 'Étude des composés du carbone', 3),
('Philosophie Antique', 'Philosophie de l’Antiquité grecque', 2),
('Physique Quantique', 'Introduction à la physique des particules', 5),
('Histoire Médiévale', 'Étude des civilisations médiévales', 3),
('Biologie Moléculaire', 'Structure et fonctions des molécules biologiques', 4),
('Programmation Web', 'Développement de sites web dynamiques', 5),
('Mathématiques Discrètes', 'Logique, ensembles, et graphes', 3),
('Topologie', 'Introduction à la topologie des espaces', 4),
('Éthique Moderne', 'Philosophie morale du 18ème siècle', 2),
('Mécanique des Fluides', 'Étude des fluides en mouvement', 5),
('Géographie Urbaine', 'Dynamique des espaces urbains', 3),
('Programmation Python', 'Introduction au langage Python', 4),
('Histoire Contemporaine', 'Événements clés du 20ème siècle', 3),
('Algèbre Linéaire', 'Vecteurs, matrices et systèmes linéaires', 4),
('Théorie des Nombres', 'Propriétés des nombres entiers', 3),
('Biochimie', 'Réactions chimiques dans les systèmes vivants', 4),
('Informatique Théorique', 'Étude des modèles de calcul', 4);

INSERT INTO Inscription (id_etudiant, id_cours, note) VALUES
(1, 1, 16.5), (1, 2, 14.0), (1, 3, NULL),
(2, 4, 15.0), (2, 5, 17.5), (2, 6, NULL),
(3, 7, 12.0), (3, 8, 13.5), (3, 9, NULL),
(4, 10, 14.0), (4, 11, 16.0), (4, 12, NULL),
(5, 13, 17.0), (5, 14, 19.0), (5, 15, NULL),
(6, 16, 14.5), (6, 17, 18.0), (6, 18, NULL),
(7, 19, 11.0), (7, 20, 13.0), (7, 1, NULL),
(8, 2, 15.5), (8, 3, 17.0), (8, 4, NULL),
(9, 5, 16.5), (9, 6, 18.5), (9, 7, NULL),
(10, 8, 15.0), (10, 9, 17.0), (10, 10, NULL);

INSERT INTO ResponsableCours (id_professeur, id_cours) VALUES
(1, 1), (1, 2), (1, 3),
(2, 4), (2, 5), (2, 6),
(3, 7), (3, 8), (3, 9),
(4, 10), (4, 11), (4, 12),
(5, 13), (5, 14), (5, 15),
(6, 16), (6, 17), (6, 18),
(7, 19), (7, 20), (1, 5);
