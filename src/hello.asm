; hello.asm
; 
; Prints out 'Hello, world!' to stdout.

global _start

section .data
message:
    db 'Hello, world!', 10  ; followed by a newline.

section .text
_start:
    mov rax, 1       ; write syscall number
    mov rdi, 1       ; stdout file descriptor
    mov rsi, message ; string address
    mov rdx, 14      ; string length in bytes
    syscall

    mov rax, 60      ; exit syscall number
    xor rdi, rdi
    syscall
