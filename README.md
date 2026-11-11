# Pure x86-64 Assembly (NASM / Linux)

A collection of low-level x86-64 Assembly (NASM) programs for Linux. This repository demonstrates direct interaction with the CPU, memory, and the System V AMD64 ABI without the use of C standard libraries (libc).

## 📌 Project Context
These programs were written during my early exploration of low-level programming. Some examples focus purely on register manipulation, CPU flags, and memory operations. 

*Note: Some programs may not use Linux system calls (`syscall`) as they were originally written for educational purposes to understand CPU behavior (using GDB to inspect registers).*

## 🛠️ Implemented Features
* **String & Memory Operations:** Implementation of `memset` at the hardware level using the `rep stosb` instruction.
* **Bit Manipulation (Popcount):** A function to count set bits in a 64-bit register using cyclic shifts and checking the Carry Flag (`CF`).
* **Architecture & Register Tests:** Deep dive into CPU flags (`flags.asm`), register size manipulation (`registers.asm`), and sub-register addressing (`subregs.asm`).
* **Arithmetic:** Unsigned multiplication (`mul`), division, and basic math operations.
* **ABI Compliance:** All functions strictly follow the System V AMD64 ABI.

## ⚙️ How to Build and Run
Ensure you have `nasm` and `ld` installed.
```bash
# Example: Compile and run the popcount program
nasm -f elf64 popcount_bits.asm -o popcount.o
ld popcount.o -o popcount
./popcount
