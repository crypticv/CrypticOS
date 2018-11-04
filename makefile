main.bin:main.asm readDisk.asm printf.asm
	nasm -fbin main.asm -o main.bin

clean:
	rm main.bin

run:
	qemu-system-x86_64 main.bin
