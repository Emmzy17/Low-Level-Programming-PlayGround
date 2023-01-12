# My First Assembly Program
.globl _start
.section .text
_start:
	movq $60, %rax
	movq $11, %rdi
	syscall
