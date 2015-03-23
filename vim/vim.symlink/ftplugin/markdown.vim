set autoindent
set spell
set cole=2


map <leader>t :Tab /\|<cr>
map <leader>p :! mdp %<cr>
map <leader>P :! mdpdf %<cr>
map <leader>I :! imget<cr>
map <leader>c :!wc % <cr>
let g:markdown_fenced_languages = ['python', 'haskell', 'c', 'json=javascript', 'java']

