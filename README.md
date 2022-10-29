# hello-asm

My attempt on hello world program using x86 assembly.

### To compile:
 run ` 
 nasm -f elf64 hello.asm -o hello.o
 ` to generate an object file using the nasm assembler.

 ### Link

 `
 ld hello.o -o hello
 ` to generate an executable file

 ### Run

`./hello` to run the program.