>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. LOAN-CALCULATOR.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-PRINCIPAL         PIC 9(8)V99.
01 WS-INTEREST-ANNUAL   PIC 9(2)V999.
01 WS-INTEREST-MONTHLY  PIC 9(2)V999.
01 WS-YEARS             PIC 9(2).
01 WS-MONTHS            PIC 9(4).
01 WS-MONTHLY-PAYMENT   PIC 9(8)V99.

PROCEDURE DIVISION.
MAIN-PARAGRAPH.
    DISPLAY "Welcome to the Loan Calculator".
    DISPLAY "--------------------------------".
    DISPLAY "Enter the loan principal amount (e.g. 20000.00): ".
    ACCEPT WS-PRINCIPAL.

    DISPLAY "Enter the annual interest rate as a decimal (e.g. 0.05 for 5%): ".
    ACCEPT WS-INTEREST-ANNUAL.

    DISPLAY "Enter the term in years (e.g. 5): ".
    ACCEPT WS-YEARS.

    COMPUTE WS-MONTHS = WS-YEARS * 12.
    COMPUTE WS-INTEREST-MONTHLY = WS-INTEREST-ANNUAL / 12.

    IF WS-INTEREST-ANNUAL = 0 THEN
        *> If there is no interest, just divide the principal by the number of months
        COMPUTE WS-MONTHLY-PAYMENT = WS-PRINCIPAL / WS-MONTHS
    ELSE
        *> Standard loan amortization formula:
        *> monthlyPayment = P * ( i / (1 - (1 + i)^(-n)) )
        COMPUTE WS-MONTHLY-PAYMENT = 
            WS-PRINCIPAL *
            (WS-INTEREST-MONTHLY /
             (1 - (1 + WS-INTEREST-MONTHLY) ** -WS-MONTHS))
    END-IF

    DISPLAY "Your monthly payment is: $" WS-MONTHLY-PAYMENT

    STOP RUN.
