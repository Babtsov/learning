// as exit.s -o exit.o
// ld exit.o -o exit
.section .data  
.section .text
.globl _start  // assembler shouldn’t discard this symbol after assembly, because the linker will need it (ld will complain otherwise)
_start:
movl $1, %eax  // syscall number for exit()
movl $0, %ebx  // argument to exit
int $0x80  // execute the syscall
