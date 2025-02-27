# Assembler-Project-C
C language project, make assembler software in special assembly language.

# C-Course-Assembler-Project

This project is based on the **_two-pass assembler_** model.  

## Getting Started

The project was coded and compiled using Ubuntu, but it may run on all Linux versions.

### Usage
To build the program you can use makefile by make command:
```
>   make
```
The assembly files need to be with an **`.as` extension**.
After compile, you can send the file names to the program as arguments (without the file extensions).

To compile the files firstpass.as, assembler.as, secondpass.as you need to run:
```
>   assembler firstpass assembler secondpass
```
The output files with the same filenames and the following extensions:  
- `.ob` - Object file
- `.ent` - Entries file
- `.ext` - Externals file

An example of input and output files can be found under `input-output` folder.

## Instruction

### Instruction Structure

Every software *instruction* is encoded into a few *words* in memory, The first word is of the following structure:

|   0-1   |   2-4   |   5-8   |   9-11   
| -----  | ----- | ----- | ----
|       A,R,E        | Destination operand addressing | opcode   |   Source operand addressing 


## Commands

|  Instruction name  | Opcode (decimal)  | 
| ------------------  | -------- 
|       mov        | 0   | 
|       cmp        | 1   | 
|       add        | 2   | 
|       sub        | 3   | 
|       not        | 4   | 
|       clr        | 5   | 
|       lea        | 6   | 
|       inc        | 7   | 
|       dec        | 8   | 
|       jmp        | 9   | 
|       bne        | 10   | 
|       red        | 11   | 
|       prn        | 12   | 
|       jsr        | 13   | 
|       rts        | 14   | 
|       stop       | 15   | 



## Directives
A **_directive_** line of the following structure:

1. An **optional** preceding *label*. e.g. `HELLO: `.
2. A _directive_: `.data`, `.string`, `.struct`, `.entry` or `.extern`.
3. Operands according to the type of the *directive*.

   ### `.data`
   Allocates memory in the data, storing received integers later in memory.
   The parameters of `.data` are valid integers (separated by a comma).  
   E.g: `.data 7, –57, +17, 9`.

   ### `.string`
   Receives a string as an operand and stores it in the data image. (stores char encoded ny their *ASCII* values).
   E.g. `STR: .string “abcdef”`
   
   ### `.entry`
   Received name of a *label* to the *symbol table*, for recognize later in other assembly files (and they would be able to use it).
   E.g. 
   ```
   ; file1.as
   .entry HELLO 
   HELLO: add #1, r1 
   ```
   ### `.extern`
   Receives a name of a *label* as a parameter and declares the *label* as being external (defined in another file).  
   
 
## Registers
There are 8 CPU registers: r0, r1, r2, r3, r4, r5, r6, r7.<br />
The size of each register is 12 bits. 
