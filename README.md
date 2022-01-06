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

![MLD] (https://i.gyazo.com/7e4d1334abe3de23c6280bc590b65e94.png)

![MCD] (https://imgur.com/CJ3fbYq)

##Langages et framework utilisés:
FrontEnd: JavaScript, HTML, CSS, Bootstrap 5.1
BackEnd: PHP, MySql, PHPMailer

##Gestion QR code:
phpQRcode

Lien github: https://github.com/NabiilS/PharmaDB