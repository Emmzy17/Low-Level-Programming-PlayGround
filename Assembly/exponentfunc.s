.globl exponent 
.type exponent, @function

.section .text
exponent:
	# %rdi has the base 
	# %rsi (which is the second parameter register) has the
	# exponent
	#Create a stack frame with one 8-byte local variable
	# which will be referred to using -8(%rbp)
	# This will store the current value of the exponent as we
	# iterate through it
	# We are allocating 16 bytes so that we maintain 16-byte
	# alignment 
	enter $16, $0

	# Accumulated value in %rax 
	movq $1, %rax 

	# Store the exponent 
	movq %rsi, -8(%rbp)

mainloop:
	mulq %rdi
	decq -8(%rbp)
	jnz mainloop

complete:
	#Result already in %rax
	leave
	ret 


