#This Program  gets the Unix time
#and then loops, continually asking for the current time until it receives a time 
#at least 5seconds after the time it found when the program first started
.globl _start
.section .data
curtime:
	#The time will be stored here
	.quad 0

.section .text
_start:
	### Initialize 
	# Get Initial time
	movq $0xc9, %rax 
	movq $curtime, %rdi
	syscall

	# Store it in %rdx
	movq curtime, %rdx

	#Add 5 seconds
timeloop:
	# Check the time 
	movq $0xc9, %rax 
	movq $curtime, %rdi
	syscall

	# If i haven't reached the time specified in %rdx, do it again
	cmpq %rdx, curtime
	jb timeloop
timefinish:
	# Exit 
	movq $0x3c, %rax 
	movq $0, %rdi
	syscall
