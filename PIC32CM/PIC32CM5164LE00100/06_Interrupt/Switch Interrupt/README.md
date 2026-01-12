# External Interrupt Using Switch (Flag Based)

This project demonstrates **external interrupt handling using a push-button switch** on the PIC32CM5164LE00100 microcontroller.

Instead of driving an LED, the interrupt sets a **software flag** inside the ISR.  
The main loop monitors this flag and performs the required action.

---

## ⚡ Working Principle
- Switch press triggers an **external interrupt**
- ISR sets a **volatile flag**
- Main loop detects the flag
- Flag is cleared after processing

---

## 🧠 Key Concepts
- External interrupt configuration
- ISR-to-main communication using flags
- Use of `volatile` variables
- Minimal ISR execution (best practice)

---

## ⚠ Notes
- ISR should only set flags, not run logic
- Flag must be declared `volatile`
- Interrupt flag must be cleared properly
- Debounce can be added if required

---

## 📚 Reference
- PIC32CM5164LE00100 Datasheet
- External Interrupt Controller (EIC) documentation
