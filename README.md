# 8-Bit Subtractor in Verilog

## Overview
This project implements an **8-bit binary subtractor** using **Verilog HDL** on **EDA Playground**. The subtractor performs binary subtraction between two 8-bit numbers and outputs an 8-bit difference along with a borrow-out. It is a key component in digital arithmetic circuits like ALUs and processors.

---

## Features
- Subtracts two 8-bit binary numbers (`A - B`)
- Outputs an 8-bit difference (`DIFF`)
- Generates a borrow-out (`BOUT`)
- Fully tested using a Verilog testbench

---

## Files
- `design.sv` – 8-bit subtractor module
- `testbench.sv` – Testbench for simulation

---

## Inputs & Outputs
**Inputs:**  
- `A[7:0]` – Minuend (first number)  
- `B[7:0]` – Subtrahend (second number)  

**Outputs:**  
- `DIFF[7:0]` – 8-bit difference  
- `BOUT` – Borrow-out

---

## How It Works
The subtractor uses **ripple borrow logic** with **full subtractors**:
B0 → FS0 → DIFF0 → B1 → FS1 → DIFF1 → ... → FS7 → DIFF7 → BOUT


Each full subtractor calculates the difference of the corresponding bits of `A` and `B` along with the borrow from the previous stage.

---

## Simulation
1. Open **EDA Playground**.
2. Copy the Verilog module and testbench code.
3. Select a simulator (e.g., Icarus Verilog).
4. Run the simulation.
5. View results in the console or waveform viewer.

**Example Table:**

| A        | B        | DIFF     | BOUT |
|----------|----------|----------|------|
| 00001101 | 00000111 | 00000110 | 0    |
| 00000010 | 00000101 | 11111101 | 1    |

---

## License
This project is for **educational purposes**.
