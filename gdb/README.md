# Commanda
`info threads` show thread information  
`info locals` show info about local variables  
`info break` show breakpoints  
`whatis <name>` show the type of a variable  
`where` or `bt` shows the backtrace & values of the args to the functions  
`frame` similar to backtrace but also shows the current line  
`delete <break point number>` delete breakpoint

# Tricks  
`p *(((char **) 0x7fffffffdbf8)+3)` 