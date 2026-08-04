# 4-Bit Ripple Carry Adder (RCA)

A **4-Bit Ripple Carry Adder (RCA)** implemented in **Verilog HDL** using hierarchical structural modeling. This project demonstrates two different implementations of a Ripple Carry Adder:

- **RCA** – Conventional implementation using four Full Adders.
- **RCAmini** – Optimized implementation using one Half Adder and three Full Adders.

Both designs were verified using **Xilinx Vivado XSim** and their RTL schematics were generated using Vivado.

---

# Project Structure

```
4bit_Ripple_Adder/
│── RCA.v
│── tb_RCA.v
│── RCAmini.v
│── tb_RCAmini.v
│── Screenshot 2026-08-04 161547.png
│── Screenshot 2026-08-04 161717.png
│── Screenshot 2026-08-04 161800.png
│── Screenshot 2026-08-04 164454.png
│── Screenshot 2026-08-04 164631.png
│── Screenshot 2026-08-04 164655.png
└── README.md
```

---

# Design 1 – Conventional Ripple Carry Adder (RCA)

## Description

The conventional Ripple Carry Adder is built by cascading **four Full Adder modules**.

Each Full Adder receives:

- One bit from input **A**
- One bit from input **B**
- Carry from the previous stage

The carry propagates from the Least Significant Bit (LSB) to the Most Significant Bit (MSB), giving rise to the name **Ripple Carry Adder**.

---

## Inputs

| Signal | Width | Description |
|---------|------|-------------|
| A | 4-bit | First Operand |
| B | 4-bit | Second Operand |
| Cin | 1-bit | Carry Input |

---

## Outputs

| Signal | Width | Description |
|---------|------|-------------|
| S | 4-bit | Sum Output |
| Cout | 1-bit | Final Carry Output |

---

# RCA Simulation Waveform

The functionality of the conventional Ripple Carry Adder was verified using **Xilinx Vivado XSim**.

<p align="center">
<img src="Screenshot 2026-08-04 161547.png" width="900">
</p>

---

# RCA RTL Schematic

The following RTL schematic shows the hierarchical implementation consisting of four cascaded Full Adders.

<p align="center">
<img src="Screenshot 2026-08-04 161717.png" width="700">
</p>

---

# RCA Detailed RTL View

The expanded RTL view illustrates the internal implementation of each Full Adder using XOR, AND and OR logic gates.

<p align="center">
<img src="Screenshot 2026-08-04 161800.png" width="900">
</p>

---

# Design 2 – RCAmini (Optimized Ripple Carry Adder)

## Description

**RCAmini** is an optimized implementation of the Ripple Carry Adder.

Instead of using four Full Adders, the first stage is implemented using a **Half Adder** because the Least Significant Bit does not require an incoming carry.

Architecture:

- 1 Half Adder
- 3 Full Adders

This implementation reduces hardware while producing the same output.

---

## Inputs

| Signal | Width | Description |
|---------|------|-------------|
| A | 4-bit | First Operand |
| B | 4-bit | Second Operand |

---

## Outputs

| Signal | Width | Description |
|---------|------|-------------|
| S | 4-bit | Sum Output |
| Cout | 1-bit | Final Carry Output |

---

# RCAmini Simulation Waveform

The optimized design was verified using **Xilinx Vivado XSim**.

<p align="center">
<img src="Screenshot 2026-08-04 164454.png" width="900">
</p>

---

# RCAmini RTL Schematic

The RTL schematic below shows one Half Adder followed by three Full Adders.

<p align="center">
<img src="Screenshot 2026-08-04 164631.png" width="700">
</p>

---

# RCAmini Detailed RTL View

The expanded RTL view shows the gate-level implementation of the Half Adder and Full Adders.

<p align="center">
<img src="Screenshot 2026-08-04 164655.png" width="900">
</p>

---

# Comparison

| Feature | RCA | RCAmini |
|----------|-----|----------|
| Full Adders | 4 | 3 |
| Half Adder | No | Yes |
| Carry Input | Required | Not Required for LSB |
| Hardware Complexity | Higher | Lower |
| Output | Same | Same |
| Simulation Verified | ✔ | ✔ |

---

# Simulation Test Cases

The following representative test cases were verified during simulation.

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0000 | 0000 | 0 | 0000 | 0 |
| 0001 | 0010 | 0 | 0011 | 0 |
| 0101 | 0011 | 0 | 1000 | 0 |
| 0111 | 1000 | 0 | 1111 | 0 |
| 1111 | 0001 | 0 | 0000 | 1 |
| 1111 | 1111 | 0 | 1110 | 1 |
| 1010 | 0101 | 1 | 0000 | 1 |
| 1111 | 1111 | 1 | 1111 | 1 |

---

# Learning Outcomes

This project helped in understanding:

- Structural Verilog Modeling
- Hierarchical Module Instantiation
- Half Adder Design
- Full Adder Design
- Ripple Carry Propagation
- RTL Schematic Analysis
- Functional Simulation
- Testbench Development
- Binary Arithmetic Design

---

# Tools Used

- Verilog HDL
- Xilinx Vivado
- XSim Simulator

---

# Future Improvements

- Parameterized N-bit Ripple Carry Adder
- Carry Look-Ahead Adder (CLA)
- Carry Select Adder (CSLA)
- Carry Skip Adder
- Performance Comparison of Different Adder Architectures

---

# Author

**Shaswat Tripathi**

Electronics & Communication Engineering  
Silicon University

GitHub Repository: **Verilog-Lab**

---

# License

This project is licensed under the MIT License.
