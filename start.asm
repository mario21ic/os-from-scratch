bits 32
global _start
extern kernel_early
extern main

section .text
    ; 4 lines for multiboot required for GRUB
    align 4
    dd 0x1BADB002       ; magic
    dd 0x00     ; flags
    dd-(0x1BADB002 + 0x000) ; checksum

_start:
    cli
    mov esp, stack
    call kernel_early
    call main
    hlt

section .bss
resb 8192 ; 8KB
stack:

