		AREA RESET, DATA, READONLY            
		EXPORT  __Vectors			; to be used externally by linker
__Vectors
		DCD     0x20008000			; initial stack pointer 
		DCD     Reset_Handler		; reset vector 
		ALIGN
 
		AREA myCode, CODE, ReadOnly
		ENTRY						; can be removed 
		EXPORT Reset_Handler		; to be used externally by linker
			
Reset_Handler



            