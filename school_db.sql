CREATE TABLE Etudiant (
    id_etudiant  INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(40),
    prenom VARCHAR(50),
    date_naissance DATE,
    adresse VARCHAR(255),
    email VARCHAR(100) UNIQUE,
    telephone VARCHAR(15)
);
