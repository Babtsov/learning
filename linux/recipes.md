# Useful Commands
## No category
`du -ch | grep total` Show Total Directory Size  
`ls -1 | wc -l` Count Files  
`!!` repeat the previous command [[more]](http://craig-russell.co.uk/2011/09/28/bang-bang-command-recall-in-linux.html)  
`qwe=$(!!)` store the output of the previous command in a variable. recomputes  
`cd -` change to previous directory  
`readelf -a a.out -W` read the ELF file.  

## Search
`grep -r "pattern" ./dir` recursively grep in specific dir  
`find . -iname "main.c"` Find Files Using Name and Ignoring Case [[more]](http://www.thegeekstuff.com/2009/03/15-practical-linux-find-command-examples/)  
`find . -regex '.*qaz.*'` Find file by regex  

## sed & awk
`sed '/QAZ/d'` delete every line containing QAZ  
`sed "s/:/\n/g"` replace each : with \n    

## Compres
`tar -cf archive.tar.gz /dir` compress an entire directory or a single file  
`tar -xf archive.tar.gz -C /tmp` extract the contents of the archive.tar.gz file to the /tmp directory  
[more on tar (how to geek)](http://www.howtogeek.com/248780/how-to-compress-and-extract-files-using-the-tar-command-on-linux/)  

## Link
`ln -s source_file [target_file]` creates a symbolic link  
`cd -P ./src` follow a symbolic link  

## Log
`clear; tail -fn 0 /var/log/applog/validation-service.log` clears the screen, and opens a window that would keep the log updating  

## SSH & remote actions
`ssh-keygen -R "server hostname or ip"` to resolve WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED  
`ssh-keygen -t rsa` to generate keypair  
`ssh -p 3022 root@localhost` use ssh to connect at port 3022  
`scp -P 1023 root@128.227.120.45:~/.ssh/authorized_keys .` copy file from remote to current dir  
`ssh-keygen -E md5 -lf ~/.ssh/github_rsa.pub` to see the fingerprint of a particular key  
[login vs non login shell](https://unix.stackexchange.com/questions/324359/why-a-login-shell-over-a-non-login-shell)  
[start sshd by default in centos](https://www.putorius.net/2014/07/start-services-on-boot-in-red-hat-7-or.html)  

## Processes & Environment variables
`pidof <name>` to list the pid(s) of a particular process
`ps -A` list all running processes  
`top` lists a dynamic real-time view of a running system  
`printenv` print all environment variables (of the shell)  
`set` show both the shell (bash) and environment variables  
`export EDITOR=/usr/bin/vim` to add/change new environment variable to the shell.  
`cat /proc/<pid>/environ` to list the environment variables of a particular process  
`setenv()/putenv()` C code functions to programmatically set/clear  
`sudo lsof -i :3300` shoes what processes listening on the port
## File permissions, users and groups
`/etc/passwd` view all of the users on the system  
`/etc/group` view all the groups and their members  
`id <username>` print user and group IDs  
`umask` default permissions for newly created files based on the "base" permissions set defined for files and directories
`chmod u=rwx,g=rwx,o=rwx <file name>` same as chmod 777 and chmod a=rwx    
`chmod g+s <mydir>` when another user creates a file or directory under such a directory "mydir", the new file or directory will have its group set as the group of the owner of "mydir", instead of the group of the user who creates it   
`chgrp group_name file/directory_name` change the group ownership of a file or directory    
`usermod -aG wheel username` add user to the sudoers in centos  

## File related commands
`dd if=/dev/zero of=output.dat  bs=1M  count=24` create a 24 mb file named output.dat  

## patitions and mounts
`sudo parted --list` display paritition table information [explanation about different partition types](https://unix.stackexchange.com/questions/289389/what-are-the-differences-between-the-various-partition-tables)  
`sudo cfdisk /dev/sdc` modify partitions  
`mkfs -v -t ext4 /dev/<xxx>` format partition to the ext4 FS  
`mkswap /dev/<xxx>` format partition as a swap  
`lsblk` - list block devices  
`mount -v -t ext4 /dev/<xxx> $LFS` mount as ext4 file system  
