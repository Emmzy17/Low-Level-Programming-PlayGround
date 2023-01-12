.globl _start
.section .text 

_start: 
	leaq people, %rbx
	movq numpeople, %rcx 
	movq $0, %rdi
	movq AGE_OFFSET(%rbx), %rax 
	cmpq $0, %rcx 
	je finish 
mainloop:
	cmpq %rax, AGE_OFFSET(%rbx)
	ja endloop
	movq %rbx, %rax		
endloop:
	addq $PERSON_RECORD_SIZE, %rbx 
	loopq mainloop
	
finish: 
	movq %rax, %rdi
	movq $60, %rax
	syscall 
