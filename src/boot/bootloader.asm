; Ben c'est le bootloader du KOS lô. Ceay schwett.
; Le but du machin est de passer en PM32bits et de charger le KKrenel

[bits 16]
[org 0x7c00]

MOV SI, AyleauString ; Store pointer to hello world string in SI 
CALL PrintString ; Print the string 
HLT ; Stop the processor 

PrintString: ; Print a string to screen 
; Assume pointer to string to print is in SI 
next_character: 
MOV AL, [SI] ; Grab the next character 
OR AL, AL 
; Check if character is zero 
JZ exit_function ; If it is, then return 
CALL PrintCharacter ; Else, print the character 
INC SI ; Increment pointer for next character 
JMP next_character ; Loop 
exit_function:
RET

PrintCharacter: ; Print a single character to screen 
; Assume character to print is in AL 
MOV AH, 0x0E ; Teletype Mode 
MOV BH, 0x00 ; Page zero 
MOV BL, 0x07 ; Light Gray 
INT 0x10 ; Print Character 
RET 

AyleauString db 'Kikoue Ohaysse 0.1',0x0A,8,8,8,8,8,'Plize Ouhaitte Ouayl Lwadeinge', 0

times 510-($-$$) db 0
dw 0xAA55