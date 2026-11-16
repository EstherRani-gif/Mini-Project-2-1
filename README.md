# Mini Project 2 - Traffic Light Controller Using Verilog

## Description
This project implements a Traffic Light Controller using Verilog. The controller manages traffic signals with proper timing and state transitions.

It controls North-South and East-West traffic lights using a Finite State Machine (FSM).

## How it Works?
- **RED** - Stop
- **GREEN** - Go
- **YELLOW** - Ready / Wait

States change one after another:
RED -> GREEN -> YELLOW -> RED

## Modules
- `design.sv` - Traffic Light Controller design
- `testbench.sv` - Testbench for verification

## Simulation
- Tool: EDA Playground (Icarus Verilog + GTKWave)
- Clock and Reset given, states correctly changing
- Waveform verified successfully

## Waveform
![Waveform](waveform.png)

## Tools Used
- Verilog HDL
- EDA Playground
- GTKWave

## Author
Muvva Esther Rani

B.Tech - Electronics and Communication Engineering
