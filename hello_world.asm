.data
str:    .asciiz "hello CS"
.text

main:
	la $a0, str #print()
	li $v0, 4
	syscall
	
	li $v0, 10
	li $a0, 2400 # print()
	syscall
	
	li $v0, 10 #exit()
	syscall