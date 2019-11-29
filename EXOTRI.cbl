       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXOTRI.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
           SELECT Nom
               ASSIGN TO
               'C:\Users\CRM\Desktop\FICHIER EXO COBOL\Nom.txt'.
           SELECT NomT
               ASSIGN TO
               'C:\Users\CRM\Desktop\FICHIER EXO COBOL\NomT.txt'.
           SELECT FichierTri
               ASSIGN TO
               'C:\Users\CRM\Desktop\FICHIER EXO COBOL\fichierTri.txt'.

       DATA DIVISION.
       FILE SECTION.
       FD  Nom.
       01  enreg-Nom.
           02 NOCLI PIC 9(7).
           02 NOM1 PIC X(20).


       FD  NomT.
       01  enreg-NomT.
           02 NOCLI PIC 9(7).
           02 NOM2 PIC X(20).


       SD  FichierTri.
       01  enreg-fichierTri.
           02 NOCLI PIC 9(7).
           02 NOM3 PIC X(20).





       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
           SORT fichierTri
               ASCENDING KEY NOM3
               USING Nom
               GIVING NomT.



            STOP RUN.
       END PROGRAM EXOTRI.
