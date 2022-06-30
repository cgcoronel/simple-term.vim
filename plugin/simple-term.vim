if !exists('g:simple_term_close') | let g:simple_term_close= '<c-t>' | en
if !exists('g:simple_term_open') | let g:simple_term_open= '<c-t>' | en

exe 'nnoremap <silent> ' g:simple_term_open ' :call SimpleTerm()<CR>'
exe 'vnoremap <silent> ' g:simple_term_open ' :call SimpleTerm()<CR>'
exe 'inoremap <silent> ' g:simple_term_open ' <esc>:call SimpleTerm()<CR>'

function! SimpleTerm(...)
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
    silent au BufEnter,BufWinEnter,WinEnter <buffer> startinsert!

    execute "tnoremap <buffer> " . g:simple_term_close . " <C-\\><C-n>:bd!<CR>"

    if (!focus)
      execute "normal \<C-h>"
    else
      execute "normal \<C-h>\<C-l>"
    endif

  endif
endfunction
