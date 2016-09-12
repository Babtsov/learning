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
