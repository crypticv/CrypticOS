[org 0x7c00]
[bits 16]

section .text

  global main

main:

;stops interuptions so that the following code runs properly
cli
;makes sure there is no segmentation
jmp 0x0000:ZeroSeg
ZeroSeg:
  xor ax, ax
  mov ss, ax
  mov ds, ax
  mov es, ax
  mov fs, ax
  mov gs, ax
  mov sp, main
  cld
;re-enables interuptions
sti 

push ax
xor ax, ax
int 0x13
pop ax

mov si, STR_0
call printf

mov si, STR_1
call printf

mov si, STR_2
call printf

mov si, STR_3
call printf


mov al, 1
mov cl, 2
call readDisk
jmp test

jmp $

%include "printf.asm"
%include "readDisk.asm"


STR_0: db 'Welcome', 0x0a, 0x0d, 0
STR_1: db 'To', 0x0a, 0x0d, 0
STR_2: db 'The CrypticOS',0x0a, 0x0d, 0
STR_3: db 'Developed by CrypticV', 0
DISK_ERR_MSG: db 'Error Loading Disk', 0x0a, 0x0d, 0
TEST_STR: db 'You are in the second sector.', 0x0a, 0x0d, 0

; padding and magic number
times 510-($-$$) db 0
dw 0xaa55

test:
  mov si, TEST_STR
  call printf

times 512 db 0
