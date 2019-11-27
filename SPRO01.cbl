
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SPRO01.
       DATA DIVISION.

       WORKING-STORAGE SECTION.

       01  CALCUL.


           02 PI PIC 999V99 VALUE 3.14.

       LINKAGE SECTION.
       01 PARAMETRES.
           02 RAYON PIC 99V99.
           02 CHOIX PIC X VALUE ' '.
           02 REPONSE PIC 999V99.

       PROCEDURE DIVISION USING PARAMETRES.
       MAIN-PROCEDURE.
           IF CHOIX = 'S' THEN
              COMPUTE REPONSE = PI * RAYON ** 2

           ELSE
               IF CHOIX = 'P' THEN
                   COMPUTE REPONSE = PI * 2 * RAYON
              END-IF
           END-IF.


       END PROGRAM SPRO01.
