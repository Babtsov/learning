# MINIX 3.2.1

* [Minix source code on Github](https://github.com/minix3/minix/tree/R3.2.1)  
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
