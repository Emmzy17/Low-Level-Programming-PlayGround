.globl _start

_start:
	movq $33, %rax
	movq $0, %rdi
	movq $2, %rbx
	divq %rbx
	movq $60, %rax
	syscall
