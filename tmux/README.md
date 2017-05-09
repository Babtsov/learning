# commands
`d` - detach 
## sessions
`s` - show sessions  
`$` - rename session  
## panes
`x` - kill the current pane  
`%` - create vertical pane  
`"` - create horizontal pane  
`o` - toggle between panes but `<arrow>` works too.  
`z` - zoom in and out of a pane  
`[` - scrollback  
## windows
`c` - create new window  
`,` - rename the window  
# from the terminal
`tmux new -s session-name` - create session   
`tmux a -t session-name` - attach to a specific session   

# config `~/.tmux.conf`
```bash
# prefix is ^a
set-option -g prefix C-a
# mouse support is on by default
set-option -g mouse on
# toggle mouse support with m
bind m set-option -g mouse
```
and then `tmux source-file ~/.tmux.conf` to apply changes

# src
https://danielmiessler.com/study/tmux/
