# Asynchronous FIFO Design – RTL to GDSII Flow

## Overview

This project implements an **Asynchronous FIFO** and demonstrates the complete **RTL-to-GDSII ASIC design flow** including:

* RTL Design
* Functional Verification
* Logic Synthesis
* Static Timing Analysis (STA)
* Design for Testability (DFT)
* Physical Design
* Power, Area and Timing Analysis

The FIFO safely transfers data between two different clock domains using:

* Gray-coded pointers
* Two flip-flop synchronizers

---

# Project Details


Asynchronous FIFO Design | Vishal Kumar Singh (MT25157) | IIIT Delhi

---

# FIFO Specifications

| Parameter        | Value             |
| ---------------- | ----------------- |
| FIFO Type        | Asynchronous FIFO |
| Data Width       | 8-bit             |
| FIFO Depth       | 16                |
| Address Size     | 4-bit             |
| Write Clock      | 2 ns              |
| Read Clock       | 4 ns              |
| Core Utilization | 50%               |

---

# Architecture

The design consists of:

* FIFO Memory
* Write Pointer Logic (`wptr_full`)
* Read Pointer Logic (`rptr_empty`)
* Synchronizers (`sync_r2w`, `sync_w2r`)
* Top FIFO Module

### Key Features

* Dual clock operation
* Full and Empty detection
* Clock Domain Crossing (CDC) handling
* Gray-code synchronization
* Metastability reduction

---

# Verification

Three testbenches were developed for functional verification.

## Testbench A

* Basic read/write testing
* Coverage ≈ 84%

## Testbench B

* Full and Empty condition verification
* Overflow and Underflow testing
* Coverage ≈ 93%

## Testbench C

* Stress testing
* Pointer wrap-around testing
* Reset during operation
* Achieved 100% code coverage

---

# Synthesis

Synthesis was performed under:

* Minimum Area Constraints
* Intermediate Timing Constraints
* Best Timing Constraints

### Observations

* Tight constraints caused setup violations
* Hold violations mainly occurred on scan paths
* Timing improved after optimization

---

# Static Timing Analysis (STA)

Performed:

* Setup Analysis
* Hold Analysis
* Path-Based Analysis (PBA)
* Graph-Based Analysis (GBA)

### Key Results

* Critical path identified in pointer and memory logic
* Timing closure achieved after CTS and routing

---

# Design For Testability (DFT)

Implemented:

* Scan Insertion
* DFT Timing Analysis
* DFT Power Analysis
* Coverage Analysis

### DFT Results

* Total Cells: 367
* Sequential Cells: 166
* Scan-enabled flip-flops inserted successfully

---

# Physical Design Flow

Implemented complete backend flow using Innovus:

1. Floorplanning
2. Placement
3. Clock Tree Synthesis (CTS)
4. Routing
5. Signoff Analysis

---

# Physical Design Results

## Area

* Total Area ≈ 5121 µm²
* FIFO memory occupies majority of area

## Power

| Power Type      | Value     |
| --------------- | --------- |
| Total Power     | 1.9657 mW |
| Internal Power  | 1.571 mW  |
| Switching Power | 0.331 mW  |
| Leakage Power   | 0.0317 mW |

## Timing

* Setup timing met
* Hold violations fixed after CTS

## Routability

* Balanced congestion
* Clean routing achieved

---

# Tools Used

| Stage           | Tool            |
| --------------- | --------------- |
| RTL Design      | Verilog HDL     |
| Simulation      | Xcelium / NCsim |
| Synthesis       | Cadence Genus   |
| STA             | Cadence Tempus  |
| DFT             | Cadence Modus   |
| Physical Design | Cadence Innovus |

---

# Repository Structure

```text id="lc1m4x"
├── RTL/
├── Testbench/
├── Constraints/
├── STA_Reports/
├── DFT/
├── Physical_Design/
├── Reports/
├── Waveforms/
└── README.md
```

---

# Conclusion

This project successfully demonstrates the complete ASIC implementation flow of an Asynchronous FIFO from RTL to GDSII. The design achieved:

* Functional correctness
* High verification coverage
* Timing closure
* Efficient CDC handling
* Successful physical implementation
