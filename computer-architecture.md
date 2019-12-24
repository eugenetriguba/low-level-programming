# Computer Architecture

Computer architecture describes the functionality, organization, and implementation of computer systems.

## von Neumann Architecture

The von Neumann architecture was first published by John von Neumann in 1945 and has since been the dominant architecture to be used, with some modern extensions.

<figure>
    <img src="./images/Von-Neumann-Architecture-Diagram.jpg" alt="von Neumann Architecture Diagram">
    <figcaption>Image from computerscience.gcse.guru</figcaption>
</figure>

As a high level overview, this architecture consists of one processor and one memory bank, connected by a bus. The Central Professing Unit (CPU) can execute instructions that are fetched from memory by a control unit. The memory also stores data. The arithmetic logic unit (ALU) then performs the needed computations. 

There are a few key features of this architecture:
  - Memory stores only bits (a unit of information, equal to 0 or 1)
  - The memory stores the encoded instructions and the data to operation on. There is no means to distinguish data from code: both are bit strings.
  - Memory is organized into cells, which are labeled with their respective indices in a natural way (e.g. cell #43 follows cell #42). The indices start at 0. Cell size may vary (John von Neumann thought that each bit should have its own address); modern computers take one byte (eight bits) as a memory cell size.
  - The program consists of instructions that are fetched one after another. Their execution is sequential unless a special jump instruction is executed.

## References

[1] I. Zhirkov, Low-level programming, 1st ed. Saint Petersburg: Apress, 2017.

[2] "Von Neumann Architecture - Computer Science GCSE GURU", Computer Science GCSE GURU, 2019. [Online]. Available: https://www.computerscience.gcse.guru/theory/von-neumann-architecture. [Accessed: 24- Dec- 2019].
