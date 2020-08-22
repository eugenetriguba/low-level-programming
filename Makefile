SHELL := bash

SRC_DIR = ./src
BUILD_DIR = ./build
BIN_DIR = ./bin

SRC_FILES = $(SRC_DIR)/*.asm

build:
	@mkdir $(BUILD_DIR)
	@mkdir $(BIN_DIR)

	@for file in $(SRC_FILES); do \
		nasm -f elf64 $(SRC_DIR)/$$(basename $$file) -o $(BUILD_DIR)/$$(basename $$file .asm).o; \
		ld $(BUILD_DIR)/$$(basename $$file .asm).o -o $(BIN_DIR)/$$(basename $$file .asm); \
		chmod u+x $(BIN_DIR)/$$(basename $$file .asm); \
		echo "Built $$(basename $$file)"; \
	done

clean:
	@rm -rf build/ bin/
	@echo "Cleaned build/ and bin/"

setup:
	sudo pacman -S nasm gcc make gdb
	cp .gdbinit ~/.gdbinit
