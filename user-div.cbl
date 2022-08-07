       IDENTIFICATION DIVISION. 
       PROGRAM-ID. USER-DIV.
       AUTHOR. JAKKRIT.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  NUM1 PIC 9(5)  VALUE  0.
       01  NUM2 PIC 9(5)  VALUE  0.
           88 NUM2-IS-ZERO   VALUE 0.
       01  RESULT PIC 9(5)v9(3) VALUE 0.
       PROCEDURE DIVISION.
       000-BEGIN.
           PERFORM 001-USER-DIV THRU 001-EXIT
           GOBACK
       .

       001-USER-DIV.
           DISPLAY "Please input NUM1 :"WITH NO ADVANCING
           ACCEPT NUM1
           DISPLAY "Please input NUM1 :"WITH NO ADVANCING
           ACCEPT NUM2
           IF NUM2-IS-ZERO THEN
              DISPLAY "Error: NUM2 is zero."
              GO TO 001-EXIT
           END-IF
           COMPUTE RESULT = NUM1/NUM2
           DISPLAY "Result is " RESULT
       .
       001-USER-DISPLAY-END.
           DISPLAY "END OF USER-DIV".
       001-EXIT.
           EXIT.
