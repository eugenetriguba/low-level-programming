# x86_64 Assembly

Assembly language for a chosen processor is a programming language consisting of mnemonics for each possible binary encoded instruction (machine code).

## Registers

When using the names r0,...,r15 of the registers, you can address a part of the register using certain suffixes:
  - d for double word - lower 32 bits
  - w for word - lower 16 bits
  - b for byte - lower 8 bits

e.g. r7b for lowest byte of register r7.

### 64-bit General Purpose Registers

| Name | Alias | Description |
| ------------- | ------------- | ------------- |
| r0 | rax | A kind of "accumulator," used in arithmetic instructions. |
| r1 | rcx | Used for cycles (e.g., in a loop) |
| r2 | rdx | Stores data during input/output operations |
| r3 | rbx | Base register. It was used for base addressing in early processor models |
| r4 | rsp | Stores the address of the topmost element in the hardware stack. |
| r5 | rbp | Stack frame's base. |
| r6 | rsi | Source index in string manipulation commands (such as movsd) |
| r7 | rdi | Destination index in string manipulation commands (such as movsd) |

These are the main 8. There is also r8 through r15.

### EFLAGS Register

CF (bit 0) Carry Flag: Set if an arithmetic operation generates a carry or a borrow out of the most significant bit of the result; cleared otherwise. Indicates an overflow condition for unsigned-integer arithmetic, also used for multiple-precision arithmetic.

AF (bit 4) Auxiliary Carry Flag: Set if an arithmetic operation generates a carry or a borrow out of bit 3 of the result; cleared otherwise. This flag is used in binary-coded decimal (BCD) arithmetic. This flag is rarely used.

ZF (bit 6) Zero Flag: Set if the result is zero; cleared otherwise.

SF (bit 7) Sign Flag: Set equal to the most-significant bit of the result, which is the sign bit of a signed integer. (0 indicates a positive value and 1 indicates a negative value.)

OF (bit 11) Overflow Flag: Set if the integer result is too large a positive number or too small a negative number (excluding the sign-bit) to fit in the destination operand; cleared otherwise. This flag indicates an overflow condition for signed-integer (two's complement) arithmetic.

CF vs OF: CF is the result of an unsigned overflow wheras OF is the result of a signed overflow. So CF will hold the 64th bit when there are not enough bits in the register to hold the value for an unsigned number (0..63 bits, CF is 64). However, OF holds
the sign bit when there is a signed overflow for a register. Because the value was too
big for the register, the most significant bit overwrote the sign bit so OF now holds it.

## References

[1] I. Zhirkov, Low-level programming, 1st ed. Saint Petersburg: Apress, 2017.

[2] "Intel® 64 and IA-32 Architectures Software Developer’s Manual", software.intel.com, 2019. [Online]. Available: https://software.intel.com/sites/default/files/managed/39/c5/325462-sdm-vol-1-2abcd-3abcd.pdf. [Accessed: 24- Dec- 2019].
