# Commanda
`info threads` show thread information  
`info locals` show info about local variables  
`info functions` show all defined functions  
`info variables` show all variables  
`info break` show breakpoints  
`whatis <name>` show the type of a variable  
`where` or `bt` shows the backtrace & values of the args to the functions  
`frame` similar to backtrace but also shows the current line  
`delete <break point number>` delete breakpoint

# Tricks  
control x control a -> toggle between GUI and CLI mode  
`p *(((char **) 0x7fffffffdbf8)+3)`  example of printing argv  

# Ref
http://blog.yourlabs.org/post/82623391224/gdb-debugging-basics  
http://visualgdb.com/gdbreference/commands/  
hint to find how many times a loop was executed: https://stackoverflow.com/questions/2956889/how-to-make-a-gdb-breakpoint-only-break-after-the-point-is-reached-a-given-numbe  
