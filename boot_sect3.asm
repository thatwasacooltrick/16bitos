; Simple boot sector program to demonstrate addressing

mov ah, 0x0e ; int 10/ah = 0eh ->scrolling teletype BIOS routine

; First Attempt
;mov al, the_secret
;int 0x10 		; Does this print an X

; Second attempt
;mov al, [the_secret]
;int 0x10 		; Does this print an X

; Third attempt
mov bx, the_secret
add bx, 0x7c00
mov al, [bx]
int 0x10 		; Does this print an X

;Fourth Attempt
;mov al, [0x7c1e]
;int 0x10 		; Does this print an X?

jmp $

the_secret:
	db "x"
	
	; padding to the BIOS boot sector declaration
	
	times 510-($-$$) db 0
	dw 0xaa55