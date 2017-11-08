## Data Accessing Methods
1. immediate mode  
data to access is embedded in the instruction itself
2. register addressing mode  
the instruction contains a register to access, rather than a memory location.
3. direct addressing mode  
the instruction contains the memory address to access, for example: load this register with the data at address 2002
```c
int b = *(0x2002);
```
4. indexed addressing mode  
the instruction contains a memory address to access, and also specifies an index register to offset that address, For example, we 
could specify address 2002 and an index register. If the index register contains the number 4, the actual address the data is loaded from 
would be 2006. On x86 processors, you can also specify a multiplier for the index. This allows you to access memory a 
byte at a time or a word at a time (4 bytes).
```c
int offset = 4;
int b = *(0x2002 + offset*multiplier); // seems like it's useful for array indexing
```
general format: `movl  BEGINNINGADDRESS(,%INDEXREGISTER,WORDSIZE)`  
specific example: `movl data_items(,%edi,4), %eax`

5. indirect addressing mode  
 the instruction contains a register that contains a pointer to where the data should be accessed. For example, if we used indirect
 addressing mode and specified the %eax register, and the %eax register contained the value 4, whatever value was at memory 
 location 4 would be used.
 ```c
 int* a = 0x4;
 int b = (*a);
 ```
6. base pointer addressing mode  
This is similar to indirect addressing, but you also include a number called the offset to add to the register’s 
value before using it for lookup. This is a lot like indexed addressing, with the difference that the offset is 
constant and the pointer is held in a register, and in indexed addressing the offset is in a register and the pointer is constant.
```c
// seems like this mode is useful for structs
struct record {
  uint8_t date;
  uint8_t age;
};
struct record * a = 0x13;
b = a->age;
// or simply,
b = *(a + 8)
```
