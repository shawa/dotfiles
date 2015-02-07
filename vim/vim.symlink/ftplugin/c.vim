setlocal tabstop=8
setlocal shiftwidth=8
setlocal noexpandtab
setlocal autoindent
setlocal smarttab
setlocal spell

set cole=0
set concealcursor=nvic

map <leader>t :Tab /=<cr>
map <leader>r :SCCompileRun<cr>
map <leader>m :make<cr>
autocmd BufWritePre <buffer> StripWhitespace

let g:syntastic_c_checkers=['make','splint', 'gcc']

