# Native Commands development tool for VIM

> Minimal plugin that open terminal into vim

Use CONTROL+T to toggle a terminal. This plugin only uses native `buffer with some nice defaults and maps the keyboard shortcut. This means you don't need exit vim, because vim already has a nice terminal.

[![asciicast](https://asciinema.org/a/RCk2v3N4CusrdjepSk04rnb20.svg)](https://asciinema.org/a/RCk2v3N4CusrdjepSk04rnb20)

## Install

I use [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'pablopunk/native-sidebar.vim'
```

You can assign your own keyboard shortcut:

```vim
" Use ctrl+T
let g:term_shortcut = '<c-t>'
```

## Related

* [Better find command for vim](https://github.com/pablopunk/better-find.vim)
* [My dotfiles](https://github.com/pablopunk/dotfiles)
