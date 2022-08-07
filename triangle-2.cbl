       IDENTIFICATION DIVISION.
       PROGRAM-ID. TRIANGLE-2.
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
           PERFORM 001-INPUT-STAR-NUM THRU 001-EXIT
           PERFORM VARYING INDEX-NUM1 FROM 1 BY 1
              UNTIL INDEX-NUM1 > STAR-NUM
              COMPUTE INDEX-NUM2 = STAR-NUM - INDEX-NUM1 + 1
              MOVE ALL "*" TO SCR-LINE(INDEX-NUM2:INDEX-NUM1)
              DISPLAY SCR-LINE
           END-PERFORM        
           GOBACK
       .

       001-INPUT-STAR-NUM.
           PERFORM UNTIL VALID-STAR-NUM
              DISPLAY "Please input star number: " WITH NO ADVANCING
              ACCEPT STAR-NUM
              IF STAR-NUM = 0 DISPLAY "Please input star number in posit
      -        "ive number"
           END-PERFORM

       .

       001-EXIT.
           EXIT
       .