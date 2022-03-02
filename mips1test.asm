#problem 3
.data
str: .asciiz "Before the subroutine \n"
str1: .asciiz "After subroutine \n"
.text
main:
li $v0, 4
la $a0, str
syscall
jal
li $v0, 4
la $a0, str1
syscall
li $v0, 10
syscall