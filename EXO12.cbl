
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXO12.
       DATA DIVISION.
       FILE SECTION.


       WORKING-STORAGE SECTION.

        01 CHAINE.
           02 ELEM OCCURS 80 PIC X.
           02 NUM PIC X(3).
           02 RUE PIC X(20).
           02 CP PIC X(5).
           02 VILLE PIC X(20).
           02 CMPL PIC X(20).


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM INIT
           PERFORM TRAIT
           PERFORM FIN
           STOP RUN.

       INIT.


       TRAIT.
           DISPLAY 'SASISEZ LA CHAINE DE CARACTERE '
           ACCEPT CHAINE

               IF CHAINE

           STOP RUN.

       FIN.


       END PROGRAM EXO12.
