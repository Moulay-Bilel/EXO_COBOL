      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Tri-bulle.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  Pos1 PIC 9 VALUE 1.
       77  Pos2 PIC 99 VALUE 2.
       77  Bouge PIC 9 VALUE 1.
       77  Temp PIC 99.
      *    --- Variables ---
       01  tri.
           02 tableau OCCURS 9 PIC 99.
      *    ---
       PROCEDURE DIVISION.
           PERFORM Debut
           PERFORM trier UNTIL Bouge = 0
           PERFORM Fin
           STOP RUN.
      *    ---
       Debut.
           DISPLAY "Ã‰crivez 9 nombres (de 0 Ã  99) dans le dÃ©sordre"
           DISPLAY "1er chiffre"
           ACCEPT tableau(1)
           DISPLAY "2e chiffre"
           ACCEPT tableau(2)
           DISPLAY "3e chiffre"
           ACCEPT tableau(3)
           DISPLAY "4e chiffre"
           ACCEPT tableau(4)
           DISPLAY "5e chiffre"
           ACCEPT tableau(5)
           DISPLAY "6e chiffre"
           ACCEPT tableau(6)
           DISPLAY "7e chiffre"
           ACCEPT tableau(7)
           DISPLAY "8e chiffre"
           ACCEPT tableau(8)
           DISPLAY "9e et dernier chiffre"
           ACCEPT tableau(9)
           PERFORM Voir
           DISPLAY "DÃ©but du tri Ã  bulles".
      *    ---
       Trier.
           MOVE 0 TO Bouge
           MOVE 1 TO Pos1
           MOVE 2 TO Pos2
           PERFORM Recherche UNTIL pos2 = 10
           DISPLAY "---"
           PERFORM Voir.
      *    ---
       Recherche.
           IF tableau(pos1) > tableau(pos2) THEN
            MOVE tableau(pos2) TO Temp
            MOVE tableau(pos1) TO tableau(pos2)
            MOVE temp TO tableau(pos1)
            MOVE 1 TO bouge
            ADD 1 TO Pos1 Pos2
           ELSE
            ADD 1 TO Pos1 Pos2
           END-IF.
      *    ---
       Voir.
           MOVE 1 TO Pos2.
           PERFORM Afficher-N UNTIL Pos2 = 10.
      *    ---
       Afficher-N.
           DISPLAY tableau(Pos2)
           ADD 1 TO Pos1.
       Fin.
           DISPLAY "Tableau trier"
           PERFORM Voir.
      *    ---
       END PROGRAM Tri-bulle.
