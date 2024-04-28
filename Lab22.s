			AREA RESET, DATA, READONLY            
			EXPORT  __Vectors			
__Vectors
			DCD     0x20008000			
			DCD     Reset_Handler		
			ALIGN
 
			AREA myCode, CODE, ReadOnly
			ENTRY						
			EXPORT Reset_Handler		
			
Reset_Handler
			MOV R0,#6 ; R0 elements count 
			MOV R1,#-14 ; from R1 to R6 are the elements 
			MOV R2,#5 
			MOV R3,#32 
			MOV R4,#-7 
			MOV R5,#0
			MOV R6,#-5
			push {R4,R5,R6}
			BL min_max
exit		B exit

min_max	 	MOV R7,#0 ;Counter
			push {R2-R3}
			ADD R3,R1,#0
			
Loop		CMP R7,R0
			BEQ Exit_Loop
			POP {R2}
			CMP R1,R2
			BLT	Gt
			MOV R1,R2
			ADD R7,#1
			B	Loop
Gt			CMP R3,R2
			BGE	GT_end
			MOV R3,R2
GT_end		ADD R7,#1
			B 	Loop
Exit_Loop	MOV R0,R3
			BX  LR
			
			end