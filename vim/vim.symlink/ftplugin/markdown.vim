setlocal complete+=k
let g:vim_markdown_math=1
let g:vim_markdown_folding_disabled=1


map <leader>p :!pandoc -o %.html -s -c ~/.pandoc/github.css %<cr>
