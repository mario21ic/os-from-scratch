#!/bin/bash
set -e

nasm -f elf32 start.asm -o start.o
objdump -f start.o
