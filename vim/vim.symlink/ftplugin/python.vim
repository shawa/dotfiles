setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal smarttab
setlocal formatoptions=croql
setlocal spell
setlocal colorcolumn=119

autocmd BufWritePre <buffer> StripWhitespace

let g:syntastic_c_checkers=['flake8', 'python', 'pep8']
