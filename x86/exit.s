.section .data  
.section .text
.globl _start  # assembler shouldn’t discard this symbol after assembly, because the linker will need it
_start:
movl $1, %eax  # syscall number for exit()
movl $0, %ebx  # argument to exit
int $0x80  # execute the syscall
