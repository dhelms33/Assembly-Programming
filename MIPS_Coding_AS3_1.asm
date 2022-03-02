.data 
str: .asciiz "The value of b is: "

.text

li $t0, 2
li $t1, 2
bne $t0, $t1, not_equal
li $t0, 5
j done

not_equal:
li $t0, 4
j done

done:
add $t0, $t0, $t1
li $v0, 4
la $a0, str
syscall
move $a0, $t0
li $v0, 1
syscall

