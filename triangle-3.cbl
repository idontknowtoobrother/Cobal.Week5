       IDENTIFICATION DIVISION.
       PROGRAM-ID. TRIANGLE-3.
       AUTHOR. JAKKRIT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  SCR-LINE       PIC X(80) VALUE SPACES.
       01  STAR-NUM       PIC 9(3) VALUE ZEROS.
           88 VALID-STAR-NUM VALUE 1 THRU 80.
       01  INDEX-NUM1      PIC 9(3) VALUE ZEROS.
       01  INDEX-NUM2      PIC 9(3) VALUE ZEROS.

       PROCEDURE DIVISION.
       000-BEGIN.
           PERFORM 002-INPUT-STAR-NUM THRU 002-EXIT  
           PERFORM 001-PRINT-STAR-LINE THRU 001-EXIT  

              VARYING INDEX-NUM1 FROM STAR-NUM BY -1
              UNTIL INDEX-NUM1 = 0 
           GOBACK
       .
       001-PRINT-STAR-LINE.
           MOVE ALL SPACES TO SCR-LINE 
           MOVE ALL "*" TO SCR-LINE(1:INDEX-NUM1)
           DISPLAY SCR-LINE 
       .
       001-EXIT.
           EXIT
       .
       002-INPUT-STAR-NUM.
           PERFORM UNTIL VALID-STAR-NUM
              DISPLAY "Please input star number: " WITH NO ADVANCING
              ACCEPT STAR-NUM
              IF NOT VALID-STAR-NUM DISPLAY "Please input star number in 
      -        "positive number"
           END-PERFORM

       .

       002-EXIT.
           EXIT
       .