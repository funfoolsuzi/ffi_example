.section __TEXT,__text

.globl _start

.extern _greet

_start:
    pushq %rbp
    movq %rsp, %rbp
    callq _greet
    popq %rbp
    retq