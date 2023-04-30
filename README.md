# Intro
This tmux [tpm](https://github.com/tmux-plugins/tpm) plugin makes your status bar appear only after the `<prefix>` key is pressed (and for a small amout of time thereafter).

# Preview
![img/pretty_preview.gif](img/pretty_preview.gif)  
<sup>\> [example with default status bar](img/preview.gif) <</sup>

# Installaiton
You can install this plugin through [tpm](https://github.com/tmux-plugins/tpm):
1. Install [tpm](https://github.com/tmux-plugins/tpm) (duh)  
2. Add this line to your `tmux.conf`:  
```tmux
set -g @plugin 'thesast/tmux-transient-status'
```
3. Install the plugin with `<prefix>I`, unless you changed `@tpm-install`, in which case then use the keybind you set.

# Configuration
This plugins offers two options to be set in your `tmux.conf` with these defaults:
```tmux
set -g @transient-status-fallback 'on'
set -g @transient-status-delay '0.5'
set -g @transient-status-stall '2.5'
```
The first controls wether or not to fall back to `C-b` as the `<prefix>` if you or another plugin forgot to set it. Can be either `on` or `off`.  
The second one controls the amount of seconds the status bar will wait after you press `<prefix>` before appearing (set to `0` to make it instant).  
The third one controls the amount of seconds the status bar will linger for after you are done with your command (set to `0` to disable lingering).  

# FAQ

## Why does `send-prefix` not work sometimes?
`send-prefix` should work when the `<prefix>` is pressed. Currently I am not aware of a workaround to make it function in other situations too. (thus, currently `bind -n MY_KEY send-prefix` is equivalent to `bind MY_KEY send-prefix`)

# Other plugins
You might also like this plugin (shown in [preview](#preview)):

  - [tmux-powerline](https://github.com/erikw/tmux-powerline) - A tmux plugin giving you a hackable status bar consisting of dynamic & beautiful looking powerline segments, written purely in bash. 

# Licence
[MIT and Apache 2.0](COPYRIGHT.md)
