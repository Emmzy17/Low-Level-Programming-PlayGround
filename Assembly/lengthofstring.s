#Make %rcx all 1's 
movq $-1, %rcx
mystring:
	.ascii "This is my string\o"

movq $mystring, %rdi #Load the address of the string 
movb $0, %al #looking for null valu 
repne scasb #repeat until found 

subq $mystring, %rdi 
decq %rdi

