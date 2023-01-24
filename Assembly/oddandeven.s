
.globl _start
.section .data
mynumber:
	.quad 7

.section .text
_start:
	movq $0, %rdx
	movq $2, %rax
	movq $mynumber, %rbx 
	divq %rbx, %rax

finish:
	movq %rdx, %rdi
	movq $0x3c, %rax
	syscall

