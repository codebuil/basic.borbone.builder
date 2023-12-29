i686-w64-mingw32-as -o boot.o boot.s
i686-w64-mingw32-gcc -c -nostdlib kernel.c -o kernel.o
ld -nostdlib -oformat=binary -T link.ld  boot.o kernel.o -o kernel.bin 
grub-file --is-x86-multiboot kernel.bin

