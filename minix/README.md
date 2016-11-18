# Project 2 strategy:
## Flow of control
1. user calls library function `plog_state_start(int PID)`
2. The library generates a system call to PM 
3. PM makes a kernel call (to the kernel (obviously)). [here is a tutorial on how to add kernel call](http://wiki.minix3.org/doku.php?id=developersguide%3Anewkernelcall)
4. kernel starts tracking the process’ transitions.  

### Notes: 
* PM will accept the PID and scan through its mproc (process table) to find what index this PID corresponds to. Then, it will send this index number to the kernel (through the kernel call).  
* The kernel will retrieve the index number it got from pm, and will use `proc_addr(n)` to index its corresponding slot in its own process table (this is needed because there is an offset between the two process tables).  

## State transitions
`pick_proc(void)` // the process goes from __ready__ to __running__  
`enqueue_head(struct proc * rp)` // the process goes from __running__ to __ready__





# MINIX 3.2.1

* [Minix source code on Github](https://github.com/minix3/minix/tree/R3.2.1)  
* [Identifier search](http://users.sosdg.org/~qiyong/mxr/ident)  
* Location of the source code on the minix file system: `/usr/src/`  

###Included inside `src/`:  
* `kernel/`   layer 1 (scheduling, messages, clock and system tasks).  
* `drivers/`  layer 2 (device drivers for disk, console, printer, etc.).  
* `servers/`  layer 3 (process manager, file system, other servers).   

![design](https://upload.wikimedia.org/wikipedia/commons/7/7d/The_MINIX_3_Microkernel_Architecture.png) 

# Building minix
The following commands will rebuild and install the operating system and utilities.
```bash
cd /usr/src
make build
```
The following commands will rebuild only the kernel.
```bash
cd /usr/src/releasetools
make hdboot
```
[Minix System Call Exercise 1](http://homepages.cs.ncl.ac.uk/nick.cook/csc2025/minix/syscall-exercise1.html)
```bash
cd /usr/src/releasetools 
make services; make install
```

# Relevant git commands
[Don't list untracked files](http://stackoverflow.com/questions/594757/how-do-i-do-a-git-status-so-it-doesnt-display-untracked-files-without-using)  `git status -uno`

# some potentially useful links
http://condor.depaul.edu/glancast/443class/docs/lecSep14.html  
