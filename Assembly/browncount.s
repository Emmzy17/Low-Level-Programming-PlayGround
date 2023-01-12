.globl _start
.section .text
_start:
	### Initialise Registers ###

	# Pointers to first record 
	leaq people, %rbx 
	
	#Total record count 
	movq numpeople, %rcx 
	# Brown hair count 
	movq $0, %rdi

	### Check Preconditions ###

	# If there are no records, finish
	cmpq $0, %rcx 
	je finish 

	### Mainloop ### 
mainloop:
	#is the hair colour brown (2) ??
	cmpq $2, HAIR_OFFSET(%rbx)
	# No? Go to next record 
	jne endloop
	incq %rdi
endloop:
	addq $PERSON_RECORD_SIZE, %rbx 	
	loopq mainloop
finish:
	movq $60, %rax
	syscall 

