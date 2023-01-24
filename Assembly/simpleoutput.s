#the following write a string and then exits 
.globl _start
.section .data
mystring:
	.ascii "Hello there!\n"
	.ascii "Nice meeting you\n"

mystring_end:
.equ mystring_length, mystring_end - mystring
.section .text
_start:
	movq $10, %rbx
process:
	### Display the string 
	# System call number 
	movq $1, %rax 
	# File descriptor 
	movq $1, %rdi
	#Pointer to the data 
	movq $mystring, %rsi 
	# Lenght of the data
	movq $mystring_length, %rdx
	decq %rbx
	syscall
loop:
	cmpq $0, %rbx
	jne process

finish:
	movq $0x3c, %rax 
	movq $0, %rdi
	syscall

