
; equ is a directive for defining constants
SYS_WRITE equ 4
STDOUT equ 1
SYS_EXIT equ 1
EXIT_SUCCESS equ 0

section .data:
    msg db "Hello, world!", 0xA, 0xD ; 0x0a is 10, the code for new line character
    msg_len equ $ - msg             ; determine the length of string by subtracting
                                    ; the address of the start of the string from
                                    ; the address of the next instruction or data.

section .text
    global _start

_start:                             ; tell linker entry point
    mov eax, SYS_WRITE              ; sys_write system call
    mov ebx, STDOUT                 ; STDOUT file descriptor
    mov ecx, msg                    ; bytes to write
    mov edx, msg_len                ; number of bytes to write
    int 0x80                        ; perform system call

    mov eax, SYS_EXIT               ; sys_exit system call
    mov ebx, EXIT_SUCCESS           ; exit status set to 0
    int 0x80