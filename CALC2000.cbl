       >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALC2000.

       *> ------------------------------------------------------------
       *> AUTHOR: Naude Vlok
       *> COURSE: CIS352 Intro to Enterprise Computing
       *> ASSIGNMENT: Chapter 1 – CALC2000
       *> PURPOSE:
       *>   Calculate and display the future value of an investment.
       *>   The investment amount doubles each time the calculation
       *>   is performed (three total runs).
       *>
       *> AI USAGE:
       *>   AI was used only for setup and troubleshooting.
       *>   All program logic was written and understood by the author.
       *> ------------------------------------------------------------

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *> Group for all input-related values
       01  INPUT-VALUES.
           05  INVESTMENT-AMOUNT      PIC 9(7)V99 VALUE 1000.00.
           05  NUMBER-OF-YEARS        PIC 99       VALUE 10.
           05  YEARLY-INTEREST-RATE   PIC 9V9      VALUE 5.5.

       *> Group for calculated results
       01  CALCULATED-VALUES.
           05  FUTURE-VALUE           PIC 9(9)V99 VALUE 0.

       *> Edited numeric items used only for display
       01  DISPLAY-VALUES.
           05  DISP-INVESTMENT        PIC $$$,$$$,$$9.99.
           05  DISP-FUTURE-VALUE      PIC $$$,$$$,$$9.99.

       PROCEDURE DIVISION.

       *> Main control paragraph
       000-CALCULATE-FUTURE-VALUES.
           DISPLAY "--------------------------------------------"
           DISPLAY "CALC2000 - Future Value Calculator"
           DISPLAY "Initial investment doubles each run"
           DISPLAY "--------------------------------------------"

           *> First calculation
           PERFORM 100-CALCULATE-FUTURE-VALUE

           *> Double investment and calculate again
           COMPUTE INVESTMENT-AMOUNT = INVESTMENT-AMOUNT * 2
           PERFORM 100-CALCULATE-FUTURE-VALUE

           *> Double investment again and calculate a third time
           COMPUTE INVESTMENT-AMOUNT = INVESTMENT-AMOUNT * 2
           PERFORM 100-CALCULATE-FUTURE-VALUE

           STOP RUN
           .

       *> Performs the future value calculation
       100-CALCULATE-FUTURE-VALUE.
           COMPUTE FUTURE-VALUE =
               INVESTMENT-AMOUNT *
               (1 + (YEARLY-INTEREST-RATE / 100))

           *> Display the results
           PERFORM 140-DISPLAY-VALUES
           .

       *> Handles formatted program output
       140-DISPLAY-VALUES.
           *> Move raw values into edited display fields
           MOVE INVESTMENT-AMOUNT TO DISP-INVESTMENT
           MOVE FUTURE-VALUE      TO DISP-FUTURE-VALUE

           DISPLAY "Investment:    " DISP-INVESTMENT
           DISPLAY "Years:         " NUMBER-OF-YEARS
           DISPLAY "Interest Rate: " YEARLY-INTEREST-RATE
           DISPLAY "Future Value:  " DISP-FUTURE-VALUE
           DISPLAY "--------------------------------------------"
           .

