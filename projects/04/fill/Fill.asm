// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.


// Put your code here.

(INPUT)
@KBD		//check if a key is pressed (no key = 0)
D=M

@color
M=0

@FILL_SCREEN		//skip the blacken code
D;JEQ // if 0

@BLACKEN
0;JMP

@INPUT
0;JMP


(BLACKEN)
@color
M=-1


(FILL_SCREEN)
	@SCREEN //16373
	D=A
	@screen
	M=D

	(FILL_LOOP)
		@color
		D=M
		@screen
		A=M
		M=D 

		@screen
		M=M+1 

		@24576 
		D=A
		@screen
		D=D-M 
	@FILL_LOOP
	D;JGT 
	
@INPUT
0;JMP