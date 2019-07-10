.text

jal print
add $t0,$zero,$v0

jal print
add $t1,$zero,$v0


sub $t3,$t0,$t1
bgezal $t3,greater
bltzal $t3,smaller
li $v0, 10
syscall

print: la $a0,head
li $v0,4
syscall
li $v0, 5
syscall
jr $ra



greater: add $a0, $zero, $t0
li $v0, 1
syscall
la $a0, x
li $v0, 4
syscall
add $a0, $zero, $t1
li $v0, 1
syscall

jr $ra

smaller: add $a0, $zero, $t0
li $v0, 1
syscall
la $a0, y
li $v0, 4
syscall
add $a0, $zero, $t1
li $v0, 1
syscall

jr $ra
.data
head:.asciiz "Enter number:\n"
x:.asciiz " is greater than "
y:.asciiz " is less than "

