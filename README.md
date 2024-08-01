# Intel Unnati 
This is the repository for submission of Intel Unnati Industrial Training project for the problem statement: Design and Implementation of Any Time Electricity Bill Payment (ATP) machine controller

### Project Summary

**Electricity Payment System (ATP Machine Controller)**

Developed an integrated hardware module for an Any Time Electricity Bill Payment (ATP) machine, aimed at automating electricity bill payments. The system features multiple input interfaces, including barcode scanner, touchscreen, and various payment methods (cash, cheque, UPI, DD). The system processes payments, dispenses appropriate denominations as change, and acknowledges bill payments.

**Key Contributions:**
- **System Design:** Implemented state machine logic to handle different stages of the payment process (IDLE, SCANNING, PAYMENT_MODE_SELECTION, CASH_PAYMENT).
- **Barcode Scanner Integration:** Developed a separate module for barcode scanning, capturing billing parameters, and signaling the completion of scanning.
- **Payment Processing:** Managed payment mode selection and handled different payment types, including cash insertion and denomination dispensing.
- **Display and Acknowledgment:** Controlled display prompts for user interactions and provided bill payment acknowledgment upon successful transactions.
- **Functional Programming:** Created utility functions to calculate remaining dues based on cheque numbers, enhancing the payment processing accuracy.

**Technologies Used:**
- Verilog HDL for hardware design
- Finite State Machines for process control
- Modular design approach for scalable system components
