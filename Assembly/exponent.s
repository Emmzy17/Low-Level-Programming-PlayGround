.globl _start
.section .text
_start:
	# %rbx will hold the base
	movq $2, %rbx
	# %rcx will hold the current count
	movq $3, %rcx 
	# store the accumulated value to %rax 
	movq $1, %rax

mainloop:
	# Adding zero will allow us to use the flags to
    	# determine if %rcx has zero to begin with
   	addq $0, %rcx
	#If the exponent is zero we are done
	jz complete
	# Otherwise multiply the accumulated value by our base
	mulq %rbx
	# Decrease Counter
	decq %rcx 
	

	jmp mainloop
complete:
	#Move the accumulated value to %rdi so we can return it 
	movq %rax, %rdi
	movq $60, %rax
	syscall

 	

