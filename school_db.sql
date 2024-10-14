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
)