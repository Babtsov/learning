##Processes
```pidof <name>``` to list the pid(s) of a particular process
```ps -A``` list all running processes  
```top``` lists a dynamic real-time view of a running system  
##Environment variable
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

## Reading logs
`clear; tail -fn 0 /var/log/applog/validation-service.log` clears the screen, and opens a window that would keep the log updating  

## SSH
`ssh-keygen -R "server hostname or ip"` to resolve WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED  
`ssh-keygen -t rsa` to generate keypair
