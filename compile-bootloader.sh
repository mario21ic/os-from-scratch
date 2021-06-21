#!/bin/bash
set -e

nasm -f bin -o bootloader.img bootloader.asm
