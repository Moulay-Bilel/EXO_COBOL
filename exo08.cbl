       IDENTIFICATION DIVISION.
       PROGRAM-ID. exo08.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.


       77  ENTIER PIC 99.
       77  RESULT PIC 99 VALUE 1.
       77  FACTORIEL PIC 999999.


       PROCEDURE DIVISION.
           DISPLAY 'SAISIR UN NOMBRE A 2 CHIFFRES '
           ACCEPT ENTIER