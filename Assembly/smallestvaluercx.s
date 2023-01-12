.globl _start
.section .data 

numberofnumbers:
	.quad 7
mynumbers:
	.quad 5,60, 32,14,56, 80, 1
.section .text
_start:
	movq numberofnumbers, %rcx 
	# use %rdi to hold the current small value
	movq $0, %rdi 
	movq mynumbers(, %rdi, 8), %rdi
	
	cmp $0, %rcx
	je endloop
myloop:
	movq mynumbers-8(, %rcx, 8), %rax
	cmp %rdi, %rax
	jae loopcontrol
	movq %rax, %rdi
loopcontrol:
	loopq myloop
	
endloop:
	movq $60, %rax
	syscall
