       IDENTIFICATION DIVISION.
       PROGRAM-ID. LIST6-4.
       AUTHOR. JAKKRIT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  COUNTERS.
           05 HUNDREDS-COUNT PIC 99 VALUE ZEROS.
           05 TENS-COUNT PIC 99 VALUE ZEROS.
           05 UNITS-COUNT PIC 99 VALUE ZEROS.
       01  ODOMETER.
           05 PRN-HUNDREDS   PIC 9.
           05 FILLER         PIC X VALUE "-".
           05 PRN-TENS       PIC 9.
           05 FILLER         PIC X VALUE "-".
           05 PRN-UNTIS   PIC 9.
       PROCEDURE DIVISION.
       000-BEGIN.
           DISPLAY "Using an out-of-line Perform"
           PERFORM 001-COUNT-MILEAGE THRU 001-EXIT
              VARYING HUNDREDS-COUNT FROM 0 BY 1
                 UNTIL HUNDREDS-COUNT > 9
              AFTER TENS-COUNT FROM 0 BY 1 UNTIL TENS-COUNT > 9
              AFTER UNITS-COUNT FROM 0 BY 1 UNTIL UNITS-COUNT > 9
      *     PERFORM VARYING HUNDREDS-COUNT FROM 0 BY 1
      *           UNTIL HUNDREDS-COUNT > 9
      *        PERFORM VARYING TENS-COUNT FROM 0 BY 1 
      *           UNTIL TENS-COUNT > 9
      *         PERFORM VARYING UNITS-COUNT FROM 0 BY 1 
      *            UNTIL UNITS-COUNT > 9
      *              MOVE HUNDREDS-COUNT TO PRN-HUNDREDS
      *              MOVE TENS-COUNT TO PRN-TENS
      *              MOVE UNITS-COUNT TO PRN-UNTIS
      *              DISPLAY "Out - " ODOMETER
      *     END-PERFORM
      *   END-PERFORM
      * END-PERFORM
           GOBACK
       .

       001-COUNT-MILEAGE.
           MOVE HUNDREDS-COUNT TO PRN-HUNDREDS
           MOVE TENS-COUNT TO PRN-TENS
           MOVE UNITS-COUNT TO PRN-UNTIS
           DISPLAY "Out - " ODOMETER
       .
       001-EXIT.
           EXIT
       .