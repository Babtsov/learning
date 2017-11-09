# find out how many times does the target appear in the array
# %eax holds the repeat count
# %edx holds the data iterms in the arrray
# %ebx holds the target
# %esi is the index pointer to the array
.section .data
# use x/20uw <addr> to view this data in gdb
# more info: http://www.delorie.com/gnu/docs/gdb/gdb_56.html
data_array:
  .long 5,234,7,34,34,44,6,34,7,8,96,454,345,34,534,0
target:
  .long 34

.section .text
# use objdump -d <binary name> to view this
# or the -s flag to view all sections 
.globl _start
_start:
movl $0, %esi
movl $0, %eax  # initialize accumulator
movl target, %ebx

loop:
movl data_array(,%esi,4), %edx
incl %esi
cmpl $0, %edx # exit if we reached the end
je end
cmpl %ebx, %edx
jne loop # continue if not equal
incl %eax
jmp loop

end:
movl %eax, %ebx # return code for exit
movl $1, %eax
int $0x80
