.section __TEXT, __text
.extern _greet
.globl _main
_main:
    pushq %rbp
    movq %rsp, %rbp
    callq _greet
    popq %rbp
    retq