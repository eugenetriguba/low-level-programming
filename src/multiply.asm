; multiply.asm
;
; Multiply rax by 26 using only shifting and addition instructions.

global _start

section .data
starting_value: dw 2

section .text
_start: 
mov rax, starting_value
mov rbx, starting_value
mov rcx, starting_value

sal rax, 4
sal ebx, 3
sal ecx, 1

mov rax, 1    ; write syscall number
mov rdi, 1    ; stdout file descriptor
mov rsi, rax  ; string address
mov rdx, 2    ; string length in bytes
syscall

mov rax, 60 ; exit syscall number
mov rdi, 0
syscall