.data

.text

li $s0, 0
bne $s1, $s2, not_equal
li $s0, 2
not_equal:
li $s0, 5