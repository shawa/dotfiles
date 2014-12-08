setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal autoindent
setlocal smarttab


set cole=2
set concealcursor=nvic

map <leader>t :Tab /=<cr>
map <leader>r :SCCompileRun<cr>
map <leader>m :make<cr>
autocmd BufWritePre <buffer> StripWhitespace
