       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXO02.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.



       01  NOM PIC X(20) VALUE ' '.
       01  PRENOM PIC X(15) VALUE ' '.
       01  DATENAIS.
           03 JJ PIC X(2).
           03 MM PIC X(2).
           03 ANNEE.
               05 SS PIC X(2).
               05 AA PIC X(2).




       PROCEDURE DIVISION.

       DISPLAY 'QUEL EST VOTRE NOM'
       ACCEPT NOM

       DISPLAY 'QUEL EST VOTRE PRENOM'
       ACCEPT PRENOM.

       DISPLAY 'QUEL EST VOTRE DATE DE NAISSANCE'
       ACCEPT  ANNEE.

       DISPLAY 'Bonjour ' NOM PRENOM 'vous etes ne le ' ANNEE.
