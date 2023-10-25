; Infinite Loop
loop:
    jmp loop

; Fill with 510 zeros so AA55 goes to 511-512
times 510-($-$$) db 0

; BIOS checks this at 511-512 if it is AA55 so it knows it is the boot sector
dw 0xaa55