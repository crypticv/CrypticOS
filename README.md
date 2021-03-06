#############
# CrypticOS #
#############
A fully custom operating system that is being built from the ground up starting with
the boot loader and then the kernal. 
This project is being made with Assembly and C.

#################
# requirements: #
#################
you will need to compile the source code. This can be done the easiest in linux. Currently the os can be loaded by qemu
and virtual box. in order to make it run on vb you will need to change line 4 of readDisk.asm to read "  mov dl, 0x00 " 
instead of "   mov dl, 0x80"
####################
# getting started: #
####################

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
############
# MAKEFILE #
############
I have included a make file to make the above process of compiling and running in qemu a bit faster and less time consuming.
to use the make file 
1)open your terminal in the root directory of the project 
2)type in " make" to compile the code
  - if you have a previous main.bin compiled you can use "make clean" to delete the previous to make sure that the new build is     has no conflicts
3)type in "make run" to start the os in qemu
