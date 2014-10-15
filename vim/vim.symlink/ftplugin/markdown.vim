"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%81v', 100)

set autoindent
set spell

set cole=2



map <leader>t :Tab /\|<cr>
map <leader>p :! mdp %<cr>
map <leader>P :! mdpdf %<cr>
map <leader>I :! imget<cr>



"Desired features
" * Automatic acronym highlighting
