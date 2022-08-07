       IDENTIFICATION DIVISION.
       PROGRAM-ID. LISTING6-3.
       AUTHOR. JAKKRIT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  REP-COUNT      PIC 9(4).
       01  PRN-REP-COUNT  PIC Z,ZZ9.
       01  NUMBER-OF-TIMES PIC 9(4) VALUE 1000.

       PROCEDURE DIVISION.
       000-BEGIN.
           PERFORM VARYING REP-COUNT FROM 0 BY 50
              UNTIL REP-COUNT = NUMBER-OF-TIMES
              MOVE REP-COUNT TO PRN-REP-COUNT
              DISPLAY "counting" PRN-REP-COUNT
           END-PERFORM
           MOVE REP-COUNT to PRN-REP-COUNT
           DISPLAY "if I have told you once,"
           DISPLAY "I've told you " PRN-REP-COUNT " times."
           GOBACK
       .
       