
# FIR-Filter-Using-Multiply-and-Accumulate

This project implements a Finite Impulse Response (FIR) filter using the Multiply-and-Accumulate (MAC) technique in SystemVerilog. It includes a testbench for simulation and validation, as well as documentation and design diagrams.

## 🧠 Project Description

A FIR filter is a type of digital filter widely used in signal processing applications. This design uses a MAC-based structure for efficient implementation. The project was developed as a digital design assignment and includes complete test and report files.

## 📁 Repository Structure

```
├── design.sv                 # SystemVerilog implementation of the FIR filter
├── testbench.sv              # Testbench for simulating the filter
├── DL_G07_Project_Report.pdf # Project report with design explanation
├── FIR Filter Design.png     # Architecture block diagram
├── Mutliplier.png            # Block diagram for multiplier module
└── README.md                 # Project documentation
```

## 🚀 Getting Started

### Prerequisites

You will need a SystemVerilog-compatible simulator such as:

- ModelSim
- QuestaSim
- Vivado Simulator

### Steps

1. **Clone the repository**

```bash
git clone https://github.com/shahparamh/FIR-Filter-Using-Multiply-and-Accumulate.git
cd FIR-Filter-Using-Multiply-and-Accumulate
```

2. **Run Simulation**

Open your preferred simulator and compile both the `design.sv` and `testbench.sv` files. Then simulate the testbench to observe the FIR filter behavior.

## 📷 Design Overview

The FIR filter uses a MAC-based architecture, which involves:

- Multiplying input samples with filter coefficients
- Accumulating the results to form the output

![FIR Filter Design](./FIR%20Filter%20Design.png)

## 📄 Documentation

More details about the architecture, simulation, and results can be found in the [`DL_G07_Project_Report.pdf`](./DL_G07_Project_Report.pdf) file.

## ✍️ Authors

- **Shah Parham** - [GitHub Profile](https://github.com/shahparamh)

## 📜 License

This project is provided for academic and learning purposes. Refer to the repository license file if available.

---

Feel free to use or extend this design in your digital signal processing or FPGA-based projects.
