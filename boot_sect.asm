mov ah, 0x0e ; tty (teletypewriter) mode
mov al, 'H' ; al is the lower part of ax
int 0x10 ; this is an interrupt, this specifically is a general interrupt for video services
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10 ; since 'l' is still on al, I assume mov copies 'l' into al each interrupt continously
mov al, 'o'
int 0x10

jmp $ ; jump to current address = infinite loop


; Fill with 510 zeros so AA55 goes to 511-512
times 510-($-$$) db 0

; BIOS checks this at 511-512 if it is AA55 so it knows it is the boot sector
dw 0xaa55