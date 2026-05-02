# Verilog--ALU

# 4-bit ALU with 8 operation in Verilog

## Operations
| sel | Operation |
|-----|-----------|
| 000 | AND       |
| 001 | OR        |
| 010 | XOR       |
| 011 | NAND      |
| 100 | NOR       |
| 101 | SUB       |
| 110 | NOT A     |
| 111 | ADD       |

## Tools Used
- VS Code
- Icarus Verilog
- GTKWave

## How to Simulate
1. Compile: iverilog -o alu alu.v alu_tb.v
2. Run: vvp alu
3. Waveform: gtkwave aluwave.vcd

## Waveform 
  <img width="1566" height="901" alt="alu_waveform" src="https://github.com/user-attachments/assets/64b43c8c-42aa-4f08-a970-aec324ca445a" />

