i686-w64-mingw32-as -o boot.o boot.s
i686-w64-mingw32-gcc -c -nostdlib kernel.c -o kernel.o
i686-w64-mingw32-ld -T link.ld -nostdlib boot.o kernel.o -o kernel.bin -oformat=elf32-i386
grub-file --is-x86-multiboot kernel.bin

