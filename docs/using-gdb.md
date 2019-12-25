# Using GDB

GDB is a debugger we can use through the command line for our asm and c programs.

```bash
nasm -o example.o -f elf64 example.asm   # Compile
ld -o example example.o                  # Link
gdb example                              # Run
```

Some useful commands once in gdb:
  - `quit` to quit gdb
  - `help cmd` to show help for the command cmd
  - `run` starts program execution
  - `break x` creates a breakpoint near the label x. When performing run or continue, we will stop at the first breakpoint hit, allowing us to examine the program state.
  - `break *address` to place a breakpoint at a specified address
  - `continue` to continue running the program
  - `stepi` or `si` to step by one instruction
  - `nexti` or `ni` will execute one instruction as well, but it will not enter functions if the instruction was call. Instead it will let the called function terminate and break at the next instruction.

To go into pseudo-graphical mode for assembly:
  - `layout asm` shows the disassembly code
  - `layout regs` shows registers and their current values.
  - `Ctrl-X` or `Ctrl-O` lets you switch between windows.
  - Arrow keys scroll up and down the window.
  - `print /FMT <val>` allows to look up register contents or memory values. Register names are prefixed with dollar signs, for example: $rax.
  - `x /FMT <address>` allows to check memory contents. Unlike print, it expects an indirection level, so it accepts a pointer.


You may configure gdb with a `~/.gdbinit` file. If you'd like to use the one locally in the repository, add `set auto-load safe-path /` to your `~/.gdbinit` file. For security reasons, using a `.gdbinit` file in a local directory is disabled by default.