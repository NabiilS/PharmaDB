/* Suppression, création et utilisatio de la base de donnée dbPharma */
DROP database if exists dbPharma;
create database dbPharma;
use dbPharma;


/* Création des tables */
CREATE TABLE Pharmacien(
   idPharmacien INT,
   nomPharmacien VARCHAR(50),
   prenomPharmacien VARCHAR(50),
   emailPharmacien VARCHAR(50),
   telPharmacien VARCHAR(50),
   motDePasse VARCHAR(50),
   etablissement VARCHAR(50),
   adresse VARCHAR(50),
   ville VARCHAR(50),
   PRIMARY KEY(idPharmacien)
);

CREATE TABLE Medecin(
   idMedecin INT,
   nomMedecin VARCHAR(50),
   prenomMedecin VARCHAR(50),
   emailMedecin VARCHAR(50),
   telephoneMedecin VARCHAR(50),
   motDePasse VARCHAR(50),
   specialite VARCHAR(50),
   adresse VARCHAR(50),
   ville VARCHAR(50),
   PRIMARY KEY(idMedecin)
);

CREATE TABLE Patient(
   idPatient INT,
   nomPatient VARCHAR(50),
   prenomPatient VARCHAR(50),
   emailPatient VARCHAR(50),
   motDePasse VARCHAR(50),
   telPatient VARCHAR(50),
   dateNaissance DATE,
   numSecu VARCHAR(50),
   taillePatient VARCHAR(50),
   poidsPatient VARCHAR(50),
   idMedecin INT NOT NULL,
   PRIMARY KEY(idPatient),
   FOREIGN KEY(idMedecin) REFERENCES Medecin(idMedecin)
);

CREATE TABLE Consulter(
   idPatient INT,
   idPharmacien INT,
   PRIMARY KEY(idPatient, idPharmacien),
   FOREIGN KEY(idPatient) REFERENCES Patient(idPatient),
   FOREIGN KEY(idPharmacien) REFERENCES Pharmacien(idPharmacien)
);


