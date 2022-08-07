       IDENTIFICATION DIVISION. 
       PROGRAM-ID. STAR-10-1.
       AUTHOR. JAKKRIT.

       PROCEDURE DIVISION.
       000-BEGIN.
           PERFORM 10 TIMES
              PERFORM 001-PRINT-STAR-OUTLINE THRU 001-EXIT
           END-PERFORM
           GOBACK
       .

      
       001-PRINT-STAR-OUTLINE.
           PERFORM 002-PRINT-ONE-STAR 10 TIMES
           DISPLAY ""
       .
       001-EXIT.
           EXIT
       .

       002-PRINT-ONE-STAR.
           DISPLAY "*" WITH NO  ADVANCING
       .

