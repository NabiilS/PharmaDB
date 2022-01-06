# PharmaDB

## Modèle logique de données

Medecin = (idMedecin INT, nomMedecin VARCHAR(50), prenomMedecin VARCHAR(50), 
emailMedecin VARCHAR(50), telephoneMedecin VARCHAR(50), motDePasse VARCHAR(50), 
specialite VARCHAR(50), adresse VARCHAR(50));

Patient = (idPatient INT, nomPatient VARCHAR(50), prenomPatient VARCHAR(50), 
emailPatient VARCHAR(50), motDePasse VARCHAR(50), telPatient VARCHAR(50), 
dateNaissance DATE, numSecu VARCHAR(50), taillePatient VARCHAR(50), 
poidsPatient VARCHAR(50), #idMedecin);

Pharmacien = (idPharmacien INT, nomPharmacien VARCHAR(50), prenomPharmacien VARCHAR(50),
 emailPharmacien VARCHAR(50), telPharmacien VARCHAR(50), motDePasse VARCHAR(50), 
etablissement VARCHAR(50), adresse VARCHAR(50), #idPatient*);

![alt text]https://i.gyazo.com/7e4d1334abe3de23c6280bc590b65e94.png)

![Screenshot](screenshot.png)

![stack Overflow](http://lmsotfy.com/so.png)
