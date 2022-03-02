.data
prompt: .asciiz "Enter a random integer number: "
found: .asciiz "Number found in database!"
not_found: .asciiz "Number not found in database!"
database: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
.text
li $v0, 4
la $a0, prompt
syscall

li $v0, 5
syscall

move $t0, $v0
li $t1, 0 #i = 0
li $t2, 10 #length of database
la $t3, database

for_loop: 
lw $t4, ($t3)
beq $t0, $t4, print_found
addi $t1, $t1, 1
addi $t3, $t3, 4
beq $t1, $t2, print_not_found
j for_loop

print_found:
li $v0, 4
la $a0, found
syscall
j done

print_not_found:
li $v0, 4
la $a0, not_found
syscall

done:
li $v0, 10
syscall
