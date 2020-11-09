// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.



@2
M=0

(FOR_LOOP)
  @1
  D=M
  @END
  D;JEQ //Escape if 0
  
  @0
  D=M
  @2
  M=M+D
  
  @1
  M=M-1
  
  @FOR_LOOP
  0;JMP // For Loop

(END)

  @END
  0;JMP // infinite loop