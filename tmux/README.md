# commands
`s` - show sessions  
`d` - detach  
`x` - kill the current pane  
`c` - create new window  
`,` - rename the window  
`%` - create vertical pane  
`"` - create horizontal pane  
`o` - toggle between panes but `<arrow>` works too.  
`[` - scrollback (for mac, use `fun` & buttons for page up/down)  
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
