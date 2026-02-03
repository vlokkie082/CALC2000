# CALC2000 – Future Value Calculator (COBOL)

## Overview
CALC2000 is a COBOL program developed for the CIS352 *Intro to Enterprise Computing* course.  
The program calculates the future value of an investment and demonstrates structured program control, numeric computation, and formatted output using COBOL best practices.

The calculation is executed three times, with the investment amount doubling before each subsequent run.

---

## Program Functionality
The program performs the following steps:

- Uses predefined input values rather than user input
- Calculates the future value of an investment using a yearly interest rate
- Displays results using edited numeric fields for clear, readable output
- Doubles the investment amount between calculations
- Repeats the calculation a total of three times

This structure reinforces paragraph-based program flow and avoids loop constructs such as `UNTIL`, as required by the assignment.

---

## Initial Values
The following values are assigned in WORKING-STORAGE:

- **Investment Amount:** 1000.00  
- **Number of Years:** 10  
- **Yearly Interest Rate:** 5.5  

---

## How to Run the Program
Using GnuCOBOL on macOS:

```bash
cobc -x CALC2000.cbl
./CALC2000

