if !exists('g:simple_term_close')
  let g:simple_term_close = '<c-t>'
endif

if !exists('g:simple_term_open')
  let g:simple_term_open = '<c-t>'
endif

if !exists('g:simple_term_leave')
  let g:simple_term_leave = '<c-h>'
endif

nnoremap <silent> <expr> g:simple_term_open ':call SimpleTerm()<CR>'
vnoremap <silent> <expr> g:simple_term_open ':call SimpleTerm()<CR>'
inoremap <silent> <expr> g:simple_term_open '<esc>:call SimpleTerm()<CR>'

function! SimpleTerm(...)
  let command = get(a:, 1, '')
  let focus = get(a:, 2, 1)

  let bufNum = bufnr('%')
  let bufType = getbufvar(bufNum, '&buftype', 'not found')

  if bufType ==# 'terminal'
    execute 'q'
  else
    vsp
    execute 'normal \<C-l>'
    execute 'term ' . command
    set nonu
    set nornu

    augroup SimpleTerm
      autocmd!
      autocmd BufLeave <buffer> stopinsert!
      autocmd BufEnter,BufWinEnter,WinEnter <buffer> startinsert!
    augroup END

    execute 'tnoremap <buffer> ' . g:simple_term_close . ' <C-\\><C-n>:bd!<CR>'
    execute 'tnoremap <buffer> ' . g:simple_term_leave . ' <C-\\><C-n><C-w><C-h>'
    execute 'tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>'

    if !focus
      execute 'normal \<C-h>'
    else
      execute 'normal \<C-h>\<C-l>'
    endif
  endif
endfunction

