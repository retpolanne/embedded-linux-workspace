# Dotfiles

## Handy emacs commands

Start emacs in daemon mode

```sh
emacs --daemon
emacsclient -c
```

Stop daemon

```
emacsclient -e "(kill-emacs)"
```

### Inside emacs: 

Reeval buffer (in case you changed init.el)

```
M-x eval-buffer
```

Send email 

```
C-x m
```

## emacs gnus

Follow [this guide](https://www.emacswiki.org/emacs/GnusAuthinfo) to encrypt your authinfo, then run setup.sh
