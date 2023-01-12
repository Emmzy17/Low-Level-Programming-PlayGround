.globl _start 
.section .text

_start:
	#rbx will hold the base 
	movq $5, %rbx 
	# rcx will hold the current exponent count 
	movq $10, % rcx
	# Store accumulated value in %rax 
	movq $1, %rax
	
	cmpq $0, %rcx
	je complete 
mainloop:
	#multiply accumulated value(%rax) with our base %rbx
	mulq %rbx
	loopq mainloop
complete: 
	movq %rax, %rdi
	movq $60, %rax
	syscall

	
