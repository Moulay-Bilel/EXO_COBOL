
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TriBul.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
           SELECT sala
           ASSIGN TO
               'C:\Users\CRM\Desktop\FICHIER_EXO_COBOL\salarier.txt'.
           SELECT salaT
           ASSIGN TO
            'C:\Users\CRM\Desktop\FICHIER_EXO_COBOL\salarierT.txt'.



       DATA DIVISION.
       FILE SECTION.
       FD  sala.
       01  enreg-salarier.
           02 id-salarier PIC 9(2).
           02 NOM PIC X(5).

       FD  salaT.
       01  enreg-salarierT.
           02 id-salrierT PIC 9(2).
           02 NOM1 PIC X(5).




       WORKING-STORAGE SECTION.
       77  EOF PIC 99 VALUE 0.

       01  enreg-TEMPO.
           02 id-TEMPO PIC 9(2).
           02 NOM-TEMPO PIC X(5).

       PROCEDURE DIVISION.
       MAIN-PRO.
           PERFORM INIT
           PERFORM TRIAGE UNTIL EOF = 1
           PERFORM LECTURE
           PERFORM FIN

           STOP RUN.

       INIT.
           OPEN INPUT sala.
           OPEN OUTPUT salaT.

           READ sala
               AT END MOVE 1 TO EOF
           END-READ

           MOVE enreg-salarier TO enreg-TEMPO.

           READ sala
               AT END MOVE 1 TO EOF
           END-READ.


       TRIAGE.
            DISPLAY 'TRIAGE'

           IF id-salarier < id-TEMPO THEN
               MOVE enreg-salarier TO enreg-salarierT
               WRITE enreg-salarierT
               END-WRITE
           ELSE
                 MOVE enreg-TEMPO TO enreg-salarierT
               WRITE enreg-salarierT
               END-WRITE
                 MOVE enreg-salarier TO enreg-TEMPO

           END-IF

           READ sala
               AT END MOVE 1 TO EOF
           END-READ.
       LECTURE.



       FIN.
           WRITE enreg-salarierT FROM enreg-TEMPO
           CLOSE sala
           CLOSE salaT.

       END PROGRAM TriBul.
