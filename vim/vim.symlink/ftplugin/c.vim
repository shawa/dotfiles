setlocal tabstop=8
setlocal shiftwidth=8
setlocal noexpandtab
setlocal autoindent
setlocal smarttab


set cole=0
set concealcursor=nvic

map <leader>t :Tab /=<cr>

autocmd BufWritePre <buffer> StripWhitespace
