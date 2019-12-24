# x86_64 Assembly

Assembly language for a chosen processor is a programming language consisting of mnemonics for each possible binary encoded instruction (machine code).

### EFLAGS Register

CF (bit 0) Carry Flag: Set if an arithmetic operation generates a carry or a borrow out of the most significant bit of the result; cleared otherwise. Indicates an overflow condition for unsigned-integer arithmetic, also used for multiple-precision arithmetic.

AF (bit 4) Auxiliary Carry Flag: Set if an arithmetic operation generates a carry or a borrow out of bit 3 of the result; cleared otherwise. This flag is used in binary-coded decimal (BCD) arithmetic.

ZF (bit 6) Zero Flag: Set if the result is zero; cleared otherwise.

SF (bit 7) Sign Flag: Set equal to the most-significant bit of the result, which is the sign bit of a signed integer. (0 indicates a positive value and 1 indicates a negative value.)

OF (bit 11) Overflow Flag: Set if the integer result is too large a positive number or too small a negative number (excluding the sign-bit) to fit in the destination operand; cleared otherwise. This flag indicates an overflow condition for signed-integer (two's complement) arithmetic.

OF vs CF: OF is an overflow flag for integers whereas CF indicates an overflow from an arithmetic operation.

## References

[1] I. Zhirkov, Low-level programming, 1st ed. Saint Petersburg: Apress, 2017.

[2] "Intel® 64 and IA-32 Architectures Software Developer’s Manual", software.intel.com, 2019. [Online]. Available: https://software.intel.com/sites/default/files/managed/39/c5/325462-sdm-vol-1-2abcd-3abcd.pdf. [Accessed: 24- Dec- 2019].
