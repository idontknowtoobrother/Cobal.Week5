       IDENTIFICATION DIVISION.
       PROGRAM-ID. SQUARE-STAR.
       AUTHOR. JAKKRIT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  SCR-LINE       PIC X(80) VALUE SPACES.
       01  STAR-NUM       PIC 9(3) VALUE ZEROS.

       PROCEDURE DIVISION.
       000-BEGIN.
           PERFORM 002-INPUT-STAR-NUM THRU 002-EXIT 
           PERFORM 001-PRINT-STAR-LINE THRU 001-EXIT STAR-NUM TIMES
           GOBACK
       .

       001-PRINT-STAR-LINE.
           MOVE ALL "*" TO SCR-LINE(1:STAR-NUM)
           DISPLAY SCR-LINE
       .
       001-EXIT.
           EXIT
       .

       002-INPUT-STAR-NUM.
           PERFORM UNTIL STAR-NUM > 0
              DISPLAY "Please input star number: " WITH NO ADVANCING
              ACCEPT STAR-NUM
              IF STAR-NUM = 0 DISPLAY "Please input star number in posit
      -        "ive number"
           END-PERFORM

       .

       002-EXIT.
           EXIT
       .