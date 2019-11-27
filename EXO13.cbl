
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXO13.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
           SELECT Nom
               ASSIGN TO
               'C:\Users\CRM\Desktop\FICHIER EXO COBOL\Nom.txt'.
           SELECT Prenom
               ASSIGN TO
             'C:\Users\CRM\Desktop\FICHIER EXO COBOL\Prenom.txt'.
           SELECT NomPrenom
               ASSIGN TO
               'C:\Users\CRM\Desktop\FICHIER EXO COBOL\NomPrenom.txt'.

       DATA DIVISION.
       FILE SECTION

       FD  Nom.
       01  enreg-Nom.
           02NOCLI PIC 9(7).
           02 Nom PIC X(20).

       FD  Prenom.
       01  enreg-Prenom.
           02NOCLI PIC 9(7).
           02 Prenom PIC X(20).

       FD  NomPrenom.
       01  enreg-NomPrenom.
           02NOCLI PIC 9(7).
           02 Nom PIC X(20).
           02 Prenom PIC X(20).


       WORKING-STORAGE SECTION.
       77  EOF-PAGE PIC 99 VALUE 0.
       77  COMPTEURN PIC 99.
       77  COMPTEURP PIC 99.
       77  COMPTEURNP PIC 99.


       PROCEDURE DIVISION.

           MAIN-PROCEDURE.
           PERFORM INIT
           PERFORM TRAIT UNTIL EOF-PAGE = 1
           PERFORM FIN
           STOP RUN.

       INIT.
       OPEN INPUT NomPrenom
           OPEN OUTPUT Nom Prenom
           READ NomPrenom
               AT END MOVE 1 TO EOF-PAGE
           END-READ.

       TRAIT.
            DISPLAY " "
            STOP RUN.

       FIN.
       END PROGRAM EXO13.
