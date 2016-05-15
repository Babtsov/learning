
	Git Command         |       Description
----------------------------|------------------------------------------------------
git init                    | initialize an empty repository
git status                  | Displays paths that have differences between the index file and the <br> current HEAD commit, paths that have differences between the working <br>tree and the index file, and paths in the working tree that are not tracked<br> by Git (and are not ignored by gitignore).
git add filename filename_2 | to add a file so it will be tracked (adds files from the working directory<br> to the staging area)
git diff 		    | shows the difference between the working directory and the staging area<br> (for only the files that are being tracked)
git diff --cached           | shows the diff between staging area and the last commit
git diff HEAD               | shows the diff between working ahea
git commit -m "msg"         | permanently stores file changes from the staging area in the repository
git commit -a -m "msg"      | stage and commit at the same time
git commit --amend -m "msg" | amends the changes to the prev commit
git log                     | to show commit history

	Git Command         |       Description
----------------------------|------------------------------------------------------
git show HEAD 		    | display everything the git log command displays for the HEAD commit, plus all the file<br> changes that were committed. (The commit we are currently on is called the HEAD commit.<br> In many cases, the most recently made commit is the HEAD commit)
git checkout HEAD filename  | Discards changes so the working directory will return to what it was in last commit
git checkout -- filename    | discards changes so the working directory will return to what it was in the staging area
git reset filename          | Unstages file changes in the staging area.
git reset SHA               | Can be used to reset to a previous commit in your commit history (detaches head)
git reset --soft/hard/mixed | [ans](http://stackoverflow.com/a/3528483/4862276)
git clean -i                | remove the files that are not being tracked in the working directory. 
git branch                  | to check what branch we are on.
git checkout b_name         | to change branch
git checkout -b b_name      | creates and changes to the new branch
git branch -f b_name dest   | forces the move of a branch to dest where dest can be another branch or SHA1
git merge b_name            | merge branch_name with the current branch (the current branch is the recieving branch) (git add file_name before mergining in case of a conflict)
git branch -d branch_name   | delete a branch

	Git Command         	     |       Description
-------------------------------------|------------------------------------------------------
git clone remote_location clone_name | clone a remote repository
git remote -v 			     | list the remotes of the project
git remote add origin <server> 	     | add local repo to a remote server
git fetch 			     | fetch the remote changes made by some other people 
git branch -r                        | list remote branches
git pull			     | pulls down from a remote and instantly merges.
git merge origin/master 	     | merge the repo with the master
git push -u origin branch_name     | push your branch up to the remote. -u -> origin will be the default destination in the future.. 

![Alt text](./image for basic commands.png "Title")

to revert to a previous commit, use this:
```bash
git reset --hard [commit SHA1] 
git push --force
```
# Git visualizations
[git visual reference](https://marklodato.github.io/visual-git-guide/index-en.html)  
[learn git branching](http://learngitbranching.js.org/)  
[explain-git-with-d3](http://onlywei.github.io/explain-git-with-d3/)
