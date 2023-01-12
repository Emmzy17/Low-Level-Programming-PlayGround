.globl _start
.section .text

_start:
	movq $2, %rbx
	movq %rbx, %rax
	movq $3, %rcx
	decq %rcx
mainloop:
	add %rbx, %rax
	loopq mainloop

complete: 
	movq %rax, %rdi
	movq $60, %rax
	syscall

