setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal smarttab
setlocal formatoptions=croql
setlocal spell
setlocal colorcolumn=119

call rainbow#load()

autocmd BufWritePre <buffer> StripWhitespace
let g:syntastic_c_checkers=['flake8', 'python', 'pep8']

let python_highlight_builtins=1
let python_highlight_exceptions=1
let python_highlight_string_formatting=1
let python_highlight_string_format=1
let python_highlight_string_templates=1
let python_highlight_indent_errors=1
let python_highlight_space_errors=1
let python_highlight_doctests=1
