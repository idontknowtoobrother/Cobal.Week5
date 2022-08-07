       IDENTIFICATION DIVISION. 
       PROGRAM-ID. STAR-10-1.
       AUTHOR. JAKKRIT.

       PROCEDURE DIVISION.
       000-BEGIN.
           PERFORM 001-PRINT-STAR-INLINE THRU 001-EXIT
           PERFORM 002-PRINT-STAR-OUTLINE THRU 002-EXIT
           GOBACK
       .

       001-PRINT-STAR-INLINE.
           PERFORM 10 TIMES
              DISPLAY "*" WITH NO ADVANCING
           END-PERFORM
           DISPLAY ""
       .
       001-EXIT.
           EXIT
       .

       002-PRINT-STAR-OUTLINE.
           PERFORM 003-PRINT-ONE-STAR 10 TIMES
           DISPLAY ""
       .
       002-EXIT.
           EXIT
       .

       003-PRINT-ONE-STAR.
           DISPLAY "*" WITH NO  ADVANCING
       .

