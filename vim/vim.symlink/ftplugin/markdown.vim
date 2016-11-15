setlocal complete+=k
let g:vim_markdown_math=1
let g:vim_markdown_folding_disabled=1

map <leader>t :TableFormat<cr>
map <leader>p :silent !pandoc -o %.html --mathjax -c ~/.pandoc/normalize.css % &<cr>:redraw!<cr>

set spell
