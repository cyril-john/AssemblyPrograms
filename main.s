	AREA MYCODE, CODE, READONLY
	ENTRY
	
	EXPORT __main
	
__main

	; Assume the required values of R1, R2, R3, R4, R5, R6, R10, R11, and R12
	MOV R1, #1
	MOV R1,r0
	MOV R3, #0
	MOV R4, #1
	MOV R5, #2
	MOV	R6, #3
	MOV R10, #4
	MOV R11, #5
	MOV R12, #6
	
	CMP R1, R2  ; Compare R1 and R2
	BEQ EQUAL  ; If R1 equals R2, branch to EQUAL label
	
	
	SUB R5, R3, R4 ; R1 does not equal R2, subtract R4 from R3
	B CHECK_R5_R6  ; Branch to CHECK_R5_R6 label
	
EQUAL
	; R1 equals R2, add R3 and R4
	ADD R5, R3, R4
	
CHECK_R5_R6
	
	CMP R5, R6 ; Compare R5 and R6
	BGT R5_GT_R6  ; If R5 is greater than R6, branch to R5_GT_R6 label
	
	
	SUB R12, R10, R11 ; R5 is not greater than R6, subtract R11 from R10
	B DONE  ; Branch to DONE label
	
R5_GT_R6  ; R5 is greater than R6, subtract R4 from R3 AND store in R5
	
	SUB R5, R3, R4
	
DONE  
STOP B STOP   ; Program completion
	
	
	END

