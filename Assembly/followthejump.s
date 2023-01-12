.globl _start
.section .text

_start:
	movq $256, %rcx
	movq %rcx, %rdi
mainloop:
	decq %rcx
	cmpq $0, %rcx
	je complete
	jmp mainloop
	 

complete:
	movq $60, %rax
	syscall
