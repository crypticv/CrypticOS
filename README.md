# CrypticOS
A fully custom operating system that is being built from the ground up starting with
the boot loader and then the kernal. 
This project is being made with Assembly and C.


requirements:
you will need to compile the source code. This can be done the easiest in linux. Currently the os can be loaded by qemu
and virtual box. in order to make it run on vb you will need to change line 4 of readDisk.asm to read "  mov dl, 0x00 " 
instead of "   mov dl, 0x80"

getting started:

1) make sure you have gcc installed   
  -arch:   sudo pacman -S gcc
  -ubuntu/mint: sudo apt-get install gcc     
                sudo apt-get update
  
2) Make sure you have qemu installed if you want to test the operating system
  -arch:   sudo pacman -S qemu
  -ubuntu/mint: sudo apt-get install qemu      
                sudo apt-get update

3) open terminal in the directory of the source code. 
4) run " nasm -fbin main.asm -o main.bin "    This will compile the main.asm file
5) to start the os in the emulated environment run " qemu-system-x86_64 main.bin "
