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