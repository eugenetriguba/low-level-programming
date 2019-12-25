; A Hello World program that writes to stdout.
;
; To run:
; $ nasm -felf64 hello.asm -o hello.o
; $ ld -o hello hello.o
; $ chmod u+x hello

global _start

section .data
message: db 'hello, world', 10 ; 10 is a newline in ascii 

section .text
_start:
    mov     rax, 1       ; 'write' syscall number
    mov     rdi, 1       ; argument #1: stdout descriptor
    mov     rsi, message ; argument #2: String address
    mov     rdx, 14      ; argument #3: String length in bytes
    syscall

    mov     rax, 60      ; 'exit' syscall number
    xor     rdi, rdi
    syscall