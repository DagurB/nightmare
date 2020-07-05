bits 16 ; tells NASM that is 16 bit code
org 0x7c00 ; tells NASM to start at offset 0x7c00
boot:
	mov si, hello ; points si to hello label memory location
	mov ah, 0x0e ; 0x0e means write char in TTY mode

.loop:
	lodsb
	or al, al ; tests if al == 0
	jz halt ; if output was 0 then jump to halt label
	int 0x10 ; runs BIOS interrupt 0x10 - Video Services
	jmp .loop

halt:
	cli ; clear interrupt flag
	hlt ; halt execution

hello: db "Hello World",0

times 510 - ($-$$) db 0 ; pad remaining 510 bytes with zeros
dw 0xaa55 ; magic bootloader number (marks this sector bootable)
