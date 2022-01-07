
if !exists('g:simple_term_shortcut') | let g:simple_term_shortcut = '<c-t>' | en

exe 'nnoremap <silent> ' g:simple_term_shortcut ' :call RunCmd()<CR>'
exe 'vnoremap <silent> ' g:simple_term_shortcut ' :call RunCmd()<CR>'
exe 'inoremap <silent> ' g:simple_term_shortcut ' <esc>:call RunCmd()<CR>'

function! RunCmd(...)
  let command = get(a:, 1, '') 
  let focus = get(a:, 2, 1) 

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
      execute "q"
  else 
    vsp
    execute "normal \<C-l>"
    execute "term " . command
    execute "set nonu"
    execute "set nornu"

    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    execute "tnoremap <buffer> <Leader>q <C-\\><C-n>:q<CR>"

    if (!focus)
      execute "normal \<C-h>"
    else
      execute "normal \<C-h>\<C-l>"
    endif

  endif
endfunction
