.globl _start
.section .data
# number of data element we have 
numberofnumbers: 
	.quad 7
# The data elements themselves 
mynumbers: 
	.quad 9, 20 , 30, 40, 4, 2, 3

.section .text
_start: 
	### Initiailise Registers
	movq numberofnumbers, %rcx 
	# Put the index of the first element in %rbx 
	movq $0, %rbx 
	# use %rdi to hold current small  value 
	movq mynumbers(, %rbx,8),  %rdi
	
	# If there are no numbers, stop
	cmp $0, %rcx 
	je endloop
	
	## Main Looop
myloop: 
	#Get the next value of mynumbers indexed by %rbx 
	movq mynumbers(,%rbx,8), %rax 
	# If %rax is not bigger than %rdi, go to the end of the loop
	cmp %rdi, %rax
	jae loopcontrol 
	#Otherwise, store this as the biggest element so far 
	movq %rax, %rdi
loopcontrol:
	# Move %rbx to the next index 
	incq %rbx
	# Decrement of %rcx(counter)  and keep going until %rcx is zero 
	loopq myloop
	
	### Clean up and Exit ###
endloop:
	movq $60, %rax
	syscall

