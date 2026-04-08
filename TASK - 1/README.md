# TASK 1 

##  Overview
In this task, I set up a complete **RISC-V development environment** using GitHub Codespaces and verified the reference flow. I also worked with FPGA labs and prepared my local system for development.

---

##  Step 1: Set Up GitHub Codespaces
- Initialized Codespace using the repository:  
  https://github.com/vsdip/vsd-riscv2  
- Launched environment using the **VS Code-based Codespace image**
- Build completed successfully without errors

<img width="1920" height="1131" alt="Screenshot from 2026-02-20 20-58-32" src="https://github.com/user-attachments/assets/33f1f858-56ee-448f-a8f6-90a3e010dc8a" />

---

##  Step 2: Verify RISC-V Reference Flow
- Followed instructions from the `README.md`
- Successfully built and executed a RISC-V program

<img width="1435" height="630" alt="image" src="https://github.com/user-attachments/assets/d6e5e344-9f8b-42e5-84f4-2047ed160370" />
<img width="1600" height="942" alt="image" src="https://github.com/user-attachments/assets/a01b0790-533a-4974-87a2-58667c45e21a" />

- Modified the C program to produce custom output:  
  **"FIELD PROGRAMMABLE GATE ARRAY"**

<img width="1600" height="942" alt="image" src="https://github.com/user-attachments/assets/4d528cc2-3ab4-4a25-9610-ab1b3702f7f7" />

---

##  Step 3: Clone and Run VSDFPGA Labs
- Cloned `vsdfpga_labs` repository on:
  - Codespace
  - Local system
- Followed all instructions in `README.md`

<img width="1600" height="942" alt="image" src="https://github.com/user-attachments/assets/b1961d26-6bf9-4138-8b05-ef82f319ac9d" />
<img width="1600" height="942" alt="image" src="https://github.com/user-attachments/assets/f7dcee63-bfd7-4d5e-9442-8dbafbd232a3" />

- Successfully flashed the FPGA program onto the board

<img width="1600" height="942" alt="image" src="https://github.com/user-attachments/assets/41d881d5-8cc4-4752-bf7a-bbdfafdf4a43" />

---

##  Step 4: Local Machine Preparation
- Cloned required repositories locally
- Reviewed `Dockerfiles` to understand:
  - Toolchains
  - Dependencies
- Identified and installed necessary packages manually

<img width="1600" height="997" alt="image" src="https://github.com/user-attachments/assets/1a2b89d2-88c1-4414-98a6-882189a7c9d4" />


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
