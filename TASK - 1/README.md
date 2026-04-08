# TASK 1 

##  Overview
In this task, I set up a complete **RISC-V development environment** using GitHub Codespaces and verified the reference flow. I also worked with FPGA labs and prepared my local system for development.

---

##  Step 1: Set Up GitHub Codespaces
- Initialized Codespace using the repository:  
  https://github.com/vsdip/vsd-riscv2  
- Launched environment using the **VS Code-based Codespace image**
- Build completed successfully without errors

<img width="1600" height="997" alt="image" src="https://github.com/user-attachments/assets/0a5ba653-7e63-4cb7-b342-88d99d0e12ac" />

---

##  Step 2: Verify RISC-V Reference Flow
- Followed instructions from the `README.md`
- Successfully built and executed a RISC-V program

<img width="935" height="430" alt="image" src="https://github.com/user-attachments/assets/6b7b49ca-966f-43cd-9662-b132e05d8267" />
<img width="1000" height="642" alt="image" src="https://github.com/user-attachments/assets/e6fec0b8-cf9d-4411-aa1d-6cf6c942beed" />
<img width="1000" height="642" alt="image" src="https://github.com/user-attachments/assets/939d6249-4597-40be-8323-e6ed889179c6" />

- Modified the C program to produce custom output:  
  **"FIELD PROGRAMMABLE GATE ARRAY"**

<img width="1600" height="942" alt="image" src="https://github.com/user-attachments/assets/628c3978-024a-45a0-b921-0cb633b5d69a" />

---

##  Step 3: Clone and Run VSDFPGA Labs
- Cloned `vsdfpga_labs` repository on:
  - Codespace
  - Local system
- Followed all instructions in `README.md`

<img width="1600" height="942" alt="image" src="https://github.com/user-attachments/assets/b1961d26-6bf9-4138-8b05-ef82f319ac9d" />
<img width="1600" height="942" alt="image" src="https://github.com/user-attachments/assets/f7dcee63-bfd7-4d5e-9442-8dbafbd232a3" />

- Successfully flashed the FPGA program onto the board

<img width="1600" height="942" alt="image" src="https://github.com/user-attachments/assets/46312066-7a65-4640-bd6a-0d8a93ebfd09" />

---

##  Step 4: Local Machine Preparation
- Cloned required repositories locally
- Reviewed `Dockerfiles` to understand:
  - Toolchains
  - Dependencies
- Identified and installed necessary packages manually

<img width="1600" height="942" alt="image" src="https://github.com/user-attachments/assets/d58516be-e541-445c-aaf6-1264be9671ca" />

---

##  Understanding Check

### 1. Where is the RISC-V program located?
- Stored in `.S` (assembly) files  
- Example: `sum1ton.S`

---

### 2. How is the program compiled and loaded?
- Compiled using **RISC-V GCC toolchain**
- Flow:
   .S → .o (object file) → .elf (executable)
- The `.elf` file is loaded into memory for execution

---

### 3. How does the RISC-V core access memory and MMIO?
- Uses a **unified address space**
- Access via standard load/store instructions:
- `lb`, `lw` (load)
- `sb`, `sw` (store)
- Memory and peripherals (MMIO) are accessed similarly

---

### 4. Where does a new FPGA IP block integrate?
- Integrated via **memory-mapped I/O**
- Assigned a specific address range
- CPU interacts using load/store instructions  
→ Just like accessing memory

---

##  Conclusion
All four steps were successfully completed:
- Codespace setup   
- RISC-V flow verification    
- FPGA lab execution   
- Local environment setup   

 **Task 1 completed successfully**
