# Linux x86-64, GNU as (Intel syntax), System V AMD64 ABI
.intel_syntax noprefix

.section .rodata
message:
    .asciz "Hello to 304 from Utsyn Artiom, number 21, group M3O-110BVk-26!"

.text
.globl main
.extern puts

main:
    push rbp
    mov rbp, rsp
    lea rdi, [rip + message]
    call puts
    xor eax, eax
    pop rbp
    ret

.section .note.GNU-stack,"",@progbits
