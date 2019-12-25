#!/bin/bash
#
# @file Enviroment Setup
# @brief Bootstrap script for installing tools used. Assumes apt (Ubuntu package manager) is available.

sudo apt install nasm gcc make gdb
cp .gdbinit ~/.gdbinit