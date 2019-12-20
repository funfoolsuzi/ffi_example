.section .text
.extern greet
.globl _start
_start:
    pushq %rbp
    movq %rsp, %rbp
    callq greet
    popq %rbp
    movq $1, %rax
    movq $0, %rbx
    int $0x80
