# Simple terminal for VIM

> Minimal plugin that open terminal in vim buffer

Use CONTROL+T to open a terminal. This plugin only uses native buffer with some nice defaults and maps the keyboard shortcut. This means you don't need exit vim, because vim already has a nice terminal.

[![asciicast](https://asciinema.org/a/c9Y2mbgcgef2PXhsWQIa4mlFX.svg)](https://asciinema.org/a/c9Y2mbgcgef2PXhsWQIa4mlFX)

<script id="asciicast-c9Y2mbgcgef2PXhsWQIa4mlFX" src="https://asciinema.org/a/c9Y2mbgcgef2PXhsWQIa4mlFX.js" async></script>

## Install

I use [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'cgcoronel/simple-term.vim'
```

You can assign your own keyboard shortcut:

```vim
" Use ctrl+t for open
let g:simple_term_open= '<c-t>'
```

```vim
" Use ctrl+t for close 
let g:simple_term_close= '<c-t>'
```

Also You can assign your own command customs shortcut:

```vim
" Use command for run nodejs app 
cnoreabbrev up :call RunCmd('npm run start') 
```

```vim
" Use command for run test jest 
cnoreabbrev test :call RunCmd('npm run test') 
```

## Related

* [My dotfiles](https://github.com/cgcoronel/vim-setup)
