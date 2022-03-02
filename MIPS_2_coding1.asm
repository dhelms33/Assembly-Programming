1. Write MIPS assemble code to calculate area of triangle :

$s0 = height of triangle

$s1 = width of triangle

$s2 = area of triangle

solution :

data :

a: .word 4

b: .word 6

c: .word 2

main :

lw $s0 , a

lw $s1 , b

lw $s3 , c

mul $s0 , $s0 , $s1;

div $s0 , $s3

move $s2 , $s0
