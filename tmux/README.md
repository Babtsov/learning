# Default Key Bindings
`?` - list all key bindings  
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
` ` - toggle between layouts  
`}` - swap panes  
## windows
`c` - create new window  
`,` - rename the window  
# Interaction from the terminal
`tmux list-keys` - list all key bindings  
`tmux kill-server` - kill it
## sessions
`tmux ls` - list current sessions  
`tmux new -s session-name` - create session   
`tmux a -t session-name` - attach to a specific session   
`tmux kill-session -t session-name` - kill the session   
# config `~/.tmux.conf`
```bash
# prefix is ^s
set-option -g prefix C-s
# mouse support is on by default
set-option -g mouse on
# toggle mouse support with m
bind m set-option -g mouse
# increase the scrollback buffer
set-option -g history-limit 10000
#current dir for vertical and horizontal splits
bind '"' split-window -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"
# Reload config with R
bind R source-file ~/.tmux.conf \; display "Config reloaded!"
# Move pane to a different window
bind j command-prompt -p "Send pane to:" "join-pane -t '%%'"
```

# src
https://danielmiessler.com/study/tmux/  
https://gist.github.com/henrik/1967800  
