disk_load:
    pusha           ; pushes ax,cx,dx,bx,sp,bp,si,di onto the stack in that order
    push dx         ; basically dx goes ontop of the stack, replacing the previous dx already in the stack

    mov ah, 0x02    ; I/O interrupt function (0x13) is moved into ah, 0x02 is the specific I/O interrupt, it being read
    mov al, dh      ; dh is the number of sectors to read, which is moved into al
    mov cl, 0x02    ; 0x02 is the first 'available' sector, since 0x01 is the boot sector, is moved to cl (secors start at 0x01)
    mov ch, 0x00    ; 