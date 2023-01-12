.globl _start
.section .data
numberofnumbers:
	.quad 7
mynumbers:
	.quad  10,15,20,22, 24,26,30
numbertofind:
	.quad 100
.section .text 
_start:
	movq numberofnumbers, %rcx
	cmpq $0, %rcx 
	je endloop
	movq numbertofind, %rbx
	movq $0, %rdi
myloop:
	movq mynumbers-8(, %rcx, 8), %rax
	cmp %rbx, %rax
	jne loopcontrol
	movq $1, %rdi
loopcontrol:
	loopq myloop
endloop:
	movq $60, %rax
	syscall

