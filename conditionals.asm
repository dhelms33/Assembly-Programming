.data
	message: .asciiz "The numbers are not equal"
	message2: .asciiz "Something happened"
	message3: .asciiz "This is just a branch \n"
.text
	main:
	addi $t0, $zero, 20
	addi $t1, $zero, 20
	
	beq $t0, $t1, numbersEqual
	bne $t0, $t1, numbersNotEqual
	
	#syscall to end program
	li $v0, 10
	syscall
	b justBranch
	
	justBranch:
	li $v0, 4
	la $a0, message3
	syscall
	
	numbersEqual:
	li $v0, 4
	la $a0, message
	syscall
	
	numbersNotEqual:
	li $v0, 4
	la $a0, message2
	syscall
	
	li $v0, 10
	syscall