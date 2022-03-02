.data :
str: .asciiz "The area of a rectangle is: "
base_prompt: .asciiz "Enter the value of the base: "
height_prompt: .asciiz "Enter the value of height: "
#x is $s0

#y is $s1

z: .word 2
.text
li $v0, 4
la $a0, height_prompt
syscall
li $v0, 5
syscall
move $s0, $v0

li $v0, 4
la $a0, base_prompt
syscall
li $v0, 5
syscall
move $s1, $v0
mul $s2, $s1, $s0

la $a0, str
li $v0, 4
syscall

li $v0, 1
move $a0, $s2
syscall
