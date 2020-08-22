# Low Level Programming

Notes and programs to understand and work on programming at a lower level.

# Build

As a prerequisite, you'll want to have `gcc`, `nasm`, and `make` installed
on your system. For debugging, `gdb` is useful. A `Makefile` is used for common
tasks in the project. If you'd like to install the setup prerequisites with it,
you can run `make setup`. However, it assume you are using a machine that has the
`pacman` package manager (i.e. Arch Linux or some derivative of it).

To build the programs, we can run `make build` and later `make clean` to remove
the built executables and object files.