.text

.data
	li $t1, 10
	addi $t2, $t1, 1
	add $t3, $t1, $t2
	addi $t4, $t1, 3
	add $t5, $t4, $t3
	addi $t5, $t5, 1
	li $v0, 1
	syscall
