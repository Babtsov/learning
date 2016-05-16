#git checkout
##```git checkout``` comes in several flavors:  
###1) ```git checkout -- files```
copies files from the stage to the working directory. Use this to throw away local changes.
[checkout1](./checkout1.png "checkout1")
###2) ```git checkout SHA1|Branch_name|HEAD -- files```
copies files from the given commit to the stage and the working directory
[checkout2](./checkout2.png "checkout2")
###3) ```git checkout SHA1|Branch_name``` 
moves HEAD to that branch (or SHA) and then the stage and working directory are set to match the contents of that commit. 
Any file that exists in the new commit (a47c3 below) is copied; any file that exists in the old commit (ed489) but not in 
the new one is deleted; and any file that exists in neither is ignored.  
[checkout3](./checkout3.png "checkout3")
###4) ```git checkout [HEAD]```  
degenerates to "check out the current branch", which is a glorified no-op with a rather expensive side-effects to show only the
tracking information, if exists, for the current branch.
