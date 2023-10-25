# ImpulseOS

I am first following os-tutorial by cfenollosa to learn how to build an os, then I am going to attempt to write one myself

On a mac, install Homebrew and then 'brew install qemu nasm'

To compile: nasm -f bin boot_sect.asm -o boot_sect.bin

To run: qemu-system-x86_64 boot_sect.bin -nographic

(you may not need -nographic or -system-x86_64)
