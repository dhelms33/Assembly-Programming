.data

.text

main:
li $a0, 43
li $a1, 2
jal test
move $s0, $v0
j done

test:
sub $v0, $a0, $a1
jr $ra

done: 
li $v0, 10
syscall
# .globl allows different funcs to be accessible from different files