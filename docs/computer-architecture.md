# Computer Architecture

Computer architecture describes the functionality, organization, and implementation of computer systems.

## von Neumann Architecture

The von Neumann architecture was first published by John von Neumann in 1945 and has since been the dominant architecture to be used, with some modern extensions.

<p align="center">
    <img src="./docs/images/Von-Neumann-Architecture-Diagram.jpg" alt="von Neumann Architecture Diagram">
    <p align="center">Image from computerscience.gcse.guru</p>
</p>

As a high level overview, this architecture consists of one processor and one memory bank, connected by a bus. The Central Professing Unit (CPU) can execute instructions that are fetched from memory by a control unit. The memory also stores data. The arithmetic logic unit (ALU) then performs the needed computations. 

There are a few key features of this architecture:
  - Memory stores only bits (a unit of information, equal to 0 or 1)
  - The memory stores the encoded instructions and the data to operation on. There is no means to distinguish data from code: both are bit strings.
  - Memory is organized into cells, which are labeled with their respective indices in a natural way (e.g. cell #43 follows cell #42). The indices start at 0. Cell size may vary (John von Neumann thought that each bit should have its own address); modern computers take one byte (eight bits) as a memory cell size.
  - The program consists of instructions that are fetched one after another. Their execution is sequential unless a special jump instruction is executed.
  
### Modern Extensions of the von Neumann Architecture

| Problem  | Solution |
| ------------- | ------------- |
| Nothing is possible without querying slow memory | Registers, caches |
| Lack of interactivity  | Interrupts |
| No support for code isolation in procedures, or for context saving | Hardware Stack |
| Multitasking: any program can execute any instruction | Protection Rings |
| Multitasking: programs are not isolated from one another | Visual Memory |

### Registers

Registers are a processor's own memory cells. They are a modern extension of the [von Neumann Architecture](./computer-architecture.md#von-neumann-architecture) which allow the CPU to augment how slow fetching from memory is. However, there are usually not very many of them, as least compared to main or secondary memory. Programmers work with general purpose registers most of the time since they are interchangeable and can be used in many different commands.

Naturally you may ask then, why not add more registers then? However, there are several reasons engineers prefer other ways of speeding up computations:
  - Registers are far more expensive.
  - Instructions encode the register's number as part of their codes. So to address more registers, the instructions have to grow in size.
  - Registers add complexity to the circuits to address them. More complex circuits are harder to speed up. It is not easy to set up a large register file to work on 5 GHz.
  
In the worst case, the use of registers could slow down computers since everything has to be fetched into registers before the computations are made and flushed into memory after.

### Interrupts

Interrupts allow program execution order to change based on events external to the program itself. After a external or internal signal is caught, a program's execution is suspended, some registers are saved, and the CPU starts to execute a special routine to handle the situation.

Situations where an interrupt may occur:
  - A signal from an external device.
  - Zero division.
  - Invalid instruction (CPU fails to recognize an instruction by its binary representation)
  - An attempt to execute a privileged instruction in a non-privileged mode.

### Hardware Stack

In general, a stack is a data structure with two operations: you can add a new element on the top of the stack (push) or you can remove an element from the top of the stack (pop).

In hardware, there is support for this data structure. While this doesn't mean there is also a separate stack memory, there is a sort of emulation implemented with those two machine instructions (push and pop) and a register (rsp). The rsp register (the stack pointer) holds the address of the topmost element of the stack.

The hardware stack is most useful for implementing function calls in higher-level languages. When function A calls function B, the stack is used to save the context of computations to return to it after B terminates.

Some important aspects of the hardware stack:
  - There can be no empty stack, even if push was performed zero times. A pop algorithm can still be executed; it just would likely return a garbage "topmost" stack element. Because of this, we never know how many elements are in the stack.
  - Stack grows toward zero address.
  - Almost all kinds of its operands are considered signed integers and thus can be expanded with sign bit.
  - Most architectures that support this stack use the same principle of the top being defined by some register. The difference comes in the meaning of the respective address. Some architectures use it as the address of the next element, that will be written on the next push. On others, it is the address of the last element already pushed onto the stack.

TODO: Protection rings and virtual memory

## References

[1] I. Zhirkov, Low-level programming, 1st ed. Saint Petersburg: Apress, 2017.

[2] "Von Neumann Architecture - Computer Science GCSE GURU", Computer Science GCSE GURU, 2019. [Online]. Available: https://www.computerscience.gcse.guru/theory/von-neumann-architecture. [Accessed: 24- Dec- 2019].
