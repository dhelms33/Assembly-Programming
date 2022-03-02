.data 
Arr: .word 1, 2, 3, 4
.text
main:
la $t1, Array
lw $t2, 0($t1)
lw $t3, 8($t1)
sw $t2, 8($t1)
sw $t3, 0($t1)
#swap two numbers
#use temp register to store addresses
#address has to be product of 4
