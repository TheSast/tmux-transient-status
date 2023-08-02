Tmux Transient Status
=======

This tmux [tpm](https://github.com/tmux-plugins/tpm) plugin makes your status bar appear only after the `<prefix>` key is pressed (and for a small amout of time thereafter).

Preview
-------

![img/preview.gif](img/preview.gif)  

Installation
------------

You can install this plugin through [tpm](https://github.com/tmux-plugins/tpm):
1. Install [tpm](https://github.com/tmux-plugins/tpm) (duh)  
2. Add this line to your `tmux.conf`:  
```tmux
set -g @plugin 'thesast/tmux-transient-status'
```
3. Install the plugin with `<prefix>I`, unless you changed `@tpm-install`, in which case you should use the keybind you set.

Configuration
-------------

This plugins offers two options to be set in your `tmux.conf` with these defaults:
```tmux
set -g @transient-status-delay '0.5'
set -g @transient-status-stall '2.5'
```
The first one controls the amount of seconds the status bar will wait after you press `<prefix>` before appearing (set to `0` to make it instant).  
The second one controls the amount of seconds the status bar will linger for after you are done with your command (set to `0` to disable lingering).  

FAQ
---

### Why does `send-prefix` not work sometimes?

Make sure to source your `tmux.conf` (and run tpm in it!) after you bind a key to `send-prefix`, as the plugin is *not* hot-reloaded. 

### Why is my status bar not hiding correctly?  

See the previous answer as it also applies to `<prefix>`.
This plugin only deals with the primary `<prefix>` not the secondary one or any other extra ones.

Other plugins
-------------

You might also like these plugins:

  - [tmux-powerline](https://github.com/erikw/tmux-powerline) - A tmux plugin giving you a hackable status bar consisting of dynamic & beautiful looking powerline segments, written purely in bash. 
  This was shown in [preview](#preview).

  - [tmux-nav-master](https://github.com/TheSast/tmux-nav-master) - Easy cross-navigation between tmux and other terminal applications.

  - [tmux-keylocker](https://github.com/TheSast/tmux-locker) - Lock away your tmux keybinds temporarely. 


Licence
-------

[MIT and Apache 2.0](COPYRIGHT.md)
