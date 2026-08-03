# Digital Gates using Verilog HDL

A beginner RTL design project implementing fundamental digital logic gates in Verilog HDL.

## Project Overview

This project demonstrates the implementation of basic combinational logic gates using Verilog HDL.

Implemented Gates:

- AND
- OR
- NOT
- NAND
- NOR
- XOR
- XNOR

The design was simulated and verified using Xilinx Vivado.

---

## Project Structure

```
Digital-Gates-Verilog
│
├── rtl
│   └── digitalgate.v
│
├── testbench
│   └── tb_digitalgate.v
│
├── docs
│   ├── DigitalGate_Schematic.png
│   └── DigitalGates_Output.png
│
├── README.md
└── LICENSE
```

---

## Inputs

| Signal | Description |
|---------|-------------|
| a | Input A |
| b | Input B |

---

## Outputs

| Signal | Description |
|---------|-------------|
| y_and | AND Output |
| y_or | OR Output |
| y_not | NOT Output |
| y_nand | NAND Output |
| y_nor | NOR Output |
| y_xor | XOR Output |
| y_xnor | XNOR Output |

---

## Truth Table

| A | B | AND | OR | NAND | NOR | XOR | XNOR | NOT(A) |
|---|---|-----|----|------|-----|-----|-------|--------|
|0|0|0|0|1|1|0|1|1|
|0|1|0|1|1|0|1|0|1|
|1|0|0|1|1|0|1|0|0|
|1|1|1|1|0|0|0|1|0|

---

## RTL Schematic

![RTL Schematic](docs/DigitalGate_Schematic.png)

---

## Simulation Waveform

![Simulation](docs/DigitalGates_Output.png)

---

## Tools Used

- Verilog HDL
- Xilinx Vivado 2026.1
- Vivado Simulator

---

## How to Run

1. Open Vivado.
2. Create a new RTL project.
3. Add `digitalgate.v`.
4. Add `tb_digitalgate.v` as Simulation Source.
5. Run Behavioral Simulation.
6. Verify the waveform.

---

## Learning Outcomes

- Verilog module creation
- Port declaration
- Continuous assignment
- RTL schematic generation
- Testbench development
- Behavioral simulation
- Logic verification

---

## Author

**Shaswat Tripathi**

Electronics and Communication Engineering

Aspiring Digital VLSI / ASIC Design Engineer

GitHub:
https://github.com/Shaswat-VLSI
