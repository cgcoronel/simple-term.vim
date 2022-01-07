# Simple terminal for VIM

> Minimal plugin that open terminal in vim buffer

Use CONTROL+T to open a terminal. This plugin only uses native `buffer with some nice defaults and maps the keyboard shortcut. This means you don't need exit vim, because vim already has a nice terminal.

[![asciicast](https://asciinema.org/a/RCk2v3N4CusrdjepSk04rnb20.svg)](https://asciinema.org/a/RCk2v3N4CusrdjepSk04rnb20)

## Install

I use [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'pablopunk/native-sidebar.vim'
```

You can assign your own keyboard shortcut:

```vim
" Use ctrl+T for open
let g:simple_term_open= '<c-t>'
```

```vim
" Use ctrl+T for close 
let g:simple_term_close= '<c-t>'
```


## Related

* [My dotfiles](https://github.com/cgcoronel/vim-setup)
