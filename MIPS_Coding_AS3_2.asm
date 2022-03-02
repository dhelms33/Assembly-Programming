.data
prompt: .asciiz "What is the result of 5+1? Type in your answer here: "
correct: .asciiz "This answer is correct!"
incorrect: .asciiz "This answer is incorrect!"
.text
li $v0, 4
la $a0, prompt
syscall

li $v0, 5
syscall

move $t0, $v0
li $t1, 6
bne $t0, $t1, not_equal
li $v0, 4
la $a0, correct
syscall

j done

not_equal:
li $v0, 4
la $a0, incorrect
syscall 
j done
done:
li $v0, 10
