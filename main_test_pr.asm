.data
str: .asciiz "The value of x before subfun is: "
line: .asciiz "\n"
str_post: .asciiz "The value of x after subfun is "
.text
main:
li $s0, 2
li $v0, 4
la $a0, str
syscall
li $v0, 1
move $a0, $s0
syscall

jal subfun
li $v0, 4
la $a0, line
syscall
li $v0, 4
la $a0, str_post
syscall
move $a0, $t0
li $v0, 1
syscall
li $v0, 10
syscall