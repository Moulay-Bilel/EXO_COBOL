       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXO09.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
           SELECT fichier
               ASSIGN TO 'C:\Users\CRM\Desktop\fichier.txt'.
           SELECT CLIH
               ASSIGN TO 'C:\Users\CRM\Desktop\CLIH.txt'.
           SELECT CLIF
               ASSIGN TO 'C:\Users\CRM\Desktop\CLIF.txt'.

       DATA DIVISION.
       FILE SECTION.
       FD  fichier.
       01  enreg-fichier.
           02 NOM PIC X(5).
           02 PRENOM PIC X(5).
           02 SEXE PIC X.

       FD  CLIH.
       01  enreg-CLIH.
           02 NOM PIC X(5).
           02 PRENOM PIC X(5).

       FD  CLIF.
       01  enreg-CLIF.
           02 NOM PIC X(5).
           02 PRENOM PIC X(5).


       WORKING-STORAGE SECTION.
       77  EOF-PAGE PIC 99 VALUE 0.
       77  COMPTEURH PIC 99.
       77  COMPTEURF PIC 99.
       77  COMPTEURA PIC 99.

       PROCEDURE DIVISION.
           OPEN INPUT fichier
           OPEN OUTPUT CLIH CLIF
           READ fichier
               AT END MOVE 1 TO EOF-PAGE
           END-READ

           PERFORM CALCUL UNTIL EOF-PAGE = 1
           DISPLAY COMPTEURH
           DISPLAY COMPTEURF
           DISPLAY COMPTEURA
           CLOSE fichier CLIH CLIF
           STOP RUN.

       CALCUL.
           IF SEXE = 'H' THEN
               COMPUTE COMPTEURH = COMPTEURH + 1
               MOVE enreg-fichier TO enreg-CLIH
               WRITE enreg-CLIH
               END-WRITE
           ELSE
               IF SEXE = 'F'
                 COMPUTE COMPTEURF = COMPTEURF + 1
                 MOVE enreg-fichier TO enreg-CLIF
                 WRITE enreg-CLIF
                 END-WRITE

               ELSE
                 COMPUTE COMPTEURA = COMPTEURA + 1

               END-IF
           END-IF

           READ fichier
               AT END MOVE 1 TO EOF-PAGE
           END-READ.









       END PROGRAM EXO09.
