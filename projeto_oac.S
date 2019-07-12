.text
.align 2
.globl main
.type main, @function

main:
    addi  sp, sp, -80 #  sp =sp1 -80mm
    sw ra, 76(sp) #
    sw s0, 72(sp)
    lui a5, %hi(.LANCHOR0)
    addi a5, a5, %lo(.LANCHOR0)
    lw a1, 0(a5) # 
    lw a2, 4(a5)
    lw a3, 8(a5)
    lw a4, 12(a5)
    sw a1, 0(sp)
    sw a2, 4(sp)
    sw a3, 8(sp)
    sw a4, 12(sp)
    lhu a4, 16(a5)
    sh a4, 16(sp)
    lbu a5, 18(a5)
    sb a5, 18(sp)
    li a2, 45  # a2  45= 
    li a1, 0
    addi a0, sp, 19
    call memset
    mv  a4, sp # a4 =sp1 
    addi a2, sp, 31
    li s0, 0
    li s3, 117

.L3:
    lbu a5, 0(a4)
    sub a5, a5, a3
    seqz a5, a5
    add s0, s0, a5
    addi a4, a4, 1
    bne a4, a2, .L3 # if a4 !a2t1.L3target
    li a1, 117
    lui a0, %hi(.LC1)
    addi a0, a0, %lo(.LC1)
    call printf
    li a2, 117
    mv a1, s0
    lui a0, %hi(.LC2)
    addi a0, a0, %lo(.LC2)
    call printf
    li a0, 0
    lw ra, 76(sp)
    lw s0, 72(sp)
    addi sp, sp, 80
    jr ra
    .size main, .-main
    .section      .rodata
    .align 2
    .set     .LANCHOR0,.  +  0

.LC0:
    .string: "guuuuuuuuu   stauvo"
    .zero   45
    .section      .rodata.str1.4,"aMs",@progbits, 1
    .align  2
.LC1:
    .string "%c\n"
.LC2:
    .string "A palavra possui exatamente %d letras %c\n"
    .ident  "GCC: (GNU) 8.1.0"
