; print_rax.asm
;
; Print out the rax register in hexadecimal.

global _start

section .data
hex_value: dq 0x1122334455667788
hex_codes: db '0123456789ABCDEF'
newline:   db 10

section .text

_start:
    mov rax, [hex_value]  ; Store the memory contents at hex_value into rax

    mov rdi, 1
    mov rdx, 1
    mov rcx, 64

    .loop:
        push rax
        sub rcx, 4
        sar rax, cl
        and rax, 0xf

        lea rsi, [hex_codes + rax]
        mov rax, 1

        push rcx
        syscall
        pop rcx

        pop rax
        test rcx, rcx
        jnz .loop

    mov rax, 1       ; write syscall number
    mov rdi, 1       ; stdout file descriptor
    mov rsi, newline ; string address of newline
    mov rdx, 1       ; string length in bytes
    syscall

    mov rax, 60   ; exit system call
    xor rdi, rdi  ; 
    syscall