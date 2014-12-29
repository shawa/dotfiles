setlocal tabstop=8
setlocal shiftwidth=8
setlocal noexpandtab
setlocal autoindent
setlocal smarttab
setlocal spell

set cole=2
set concealcursor=nvic

map <leader>t :Tab /=<cr>
map <leader>r :SCCompileRun<cr>
map <leader>m :make<cr>
autocmd BufWritePre <buffer> StripWhitespace
