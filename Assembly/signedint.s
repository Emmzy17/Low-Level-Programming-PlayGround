.globl _start 
.section text
_start:
	movb $0b01111111, %al 
	addb  $0b10011111, %al
	jno finish
	movq $1, %rdi

finish:
	movq $60, %rax 
	syscall

