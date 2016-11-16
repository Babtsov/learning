## Various useful commands
`du -ch | grep total` Show Total Directory Size  
`ls -1 | wc -l` Count Files  

## Search
`grep -r "pattern" ./dir` recursively grep in specific dir  
[find (the geek stuff)](http://www.thegeekstuff.com/2009/03/15-practical-linux-find-command-examples/)  
`find . -iname "main.c"` Find Files Using Name and Ignoring Case  

## Compres
[tar (how to geek)](http://www.howtogeek.com/248780/how-to-compress-and-extract-files-using-the-tar-command-on-linux/)  
`tar -cf archive.tar.gz /dir` compress an entire directory or a single file  
`tar -xf archive.tar.gz -C /tmp` extract the contents of the archive.tar.gz file to the /tmp directory  

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

##Processes & Environment variables
```pidof <name>``` to list the pid(s) of a particular process
```ps -A``` list all running processes  
```top``` lists a dynamic real-time view of a running system  
```printenv``` print all environment variables (of the shell)  
```export EDITOR=/usr/bin/vim``` to add/change new environment variable to the shell.  
```cat /proc/<pid>/environ``` to list the environment variables of a particular process 

##File permissions, users and groups
`/etc/passwd` view all of the users on the system  
`/etc/group` view all the groups and their members  
`id <username>` print user and group IDs  
`umask` default permissions for newly created files based on the "base" permissions set defined for files and directories
`chmod u=rwx,g=rwx,o=rwx <file name>` same as chmod 777 and chmod a=rwx    
`chmod g+s <mydir>` when another user creates a file or directory under such a directory "mydir", the new file or directory will have its group set as the group of the owner of "mydir", instead of the group of the user who creates it.

