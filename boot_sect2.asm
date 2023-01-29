; simple hello world boot sector, it prints a message to the screen using a BIOS routine

mov ah, 0x0e ; int 10/ah = 0eh -> scrolling teletype bios routine

mov al, 'T'
int 0x10
mov al, 'r'
int 0x10
mov al, 'i'
int 0x10
mov al, 's'
int 0x10
mov al, 't'
int 0x10
mov al, 'i'
int 0x10
mov al, 'a'
int 0x10
mov al, 'n'
int 0x10
mov al, ' '
int 0x10
mov al, 'O'
int 0x10
mov al, 'S'
int 0x10
mov al, ' '
int 0x10
mov al, 'v'
int 0x10
mov al, '.'
int 0x10
mov al, '1'
int 0x10

jmp $ ; jump to the current address for eternity

;padding until the BIOS boot sector number

times 510-($-$$) db 0;

dw 0xaa55 ;Last two bytes to declare to the BIOS this is a boot sector