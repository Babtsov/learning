## save and exit
`C-x C-w` : Write the file to a different name (this is the same as Save As in most modern programs.  
`C-x C-c` : Exit emacs.  

## selecting / regions 
`C-x space` rectangle-mark-mode  
`C-x h` select the whole file  
`C-M-\` indent-region (auto format)  
[copy and paste regions](https://www.emacswiki.org/emacs/CopyAndPaste)  
jump to previous using marks http://ergoemacs.org/emacs/emacs_jump_to_previous_position.html  

## registers
[saving positions](https://www.gnu.org/software/emacs/manual/html_node/emacs/Position-Registers.html)  
[preserve window configuration](https://stackoverflow.com/questions/2572950/preserve-window-layout-in-emacs)  

## tags
` M-x visit-tags-table` load the tag table (might need to reload it)  
create TAGS: `find . -name "*.[chS]" -print | xargs etags`  
## buffers/windows
Resource [buffers](http://ergoemacs.org/emacs/emacs_buffer_management.html)  
`C-x b`	Switch Buffers  
`C-x 4 b` Switch buffer in the other window  
`C-x C-b`	Get a List of Buffers  
`C-x o`	Switch to Other Window  
`C-x 1`	Close Other Window  
`C-x 2`	Split the Screen Horizontally  
`C-c <left>` winner mode go back to the previous window config  
`M-x diff-buffer-with-file` check what has been modified  
## navigate
`M-g g` goto line  
```
directions to move the cursor
   p
b     f
   n
```
`C-v` : move the cursor one page down  
`M-v`: move the cursor one page up  
`M-<` : move the cursor to the beginning of the file  
`M->` : move the cursor to the end of the file  


`M-.` jump to definition  
`M-,` go back  
`M-?` find refernces  
if there are multiple definitions then `C-,` or `C-.` to jump between them  


## help
`C-h w <command-name>` find keybinding for a command (where)  
`C-h k <key-sequence>` find the bound key sequence for a command name  
`C-h v <var>` Display the value and documentation of variable var (describe-variable).  


src:
blog
https://blasphemousbits.wordpress.com/2007/05/04/learning-emacs-part-4-buffers-windows-and-frames/

jump to previous position
http://ergoemacs.org/emacs/emacs_jump_to_previous_position.html


term mode: https://www.gnu.org/software/emacs/manual/html_node/emacs/Term-Mode.html#Term-Mode
