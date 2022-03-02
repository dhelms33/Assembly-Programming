	.data
str: .asciiz "Hello World! This is my first MIIPS program! \n"
	.text
main:
	li $v0, 4
	la $a0, str
	syscall
