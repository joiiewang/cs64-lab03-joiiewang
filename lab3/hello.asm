# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
input: .asciiz "Enter an integer:\n"
start: .asciiz "Hello Pandemic World!\nThe magic number is "
end: .asciiz "!!!\n"
# TODO: Write your string definitions here

#Text Area (i.e. instructions)
.text
main:

	li $v0, 4
	la $a0, input
	syscall

	li $v0, 5
	syscall
	move$t0, $v0
	
	li $v0, 4
	la $a0, start
	syscall

	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 4
	la $a0, end
	syscall
	# TODO: Write your code here

exit:
	# Exit
	li $v0, 10
	syscall

