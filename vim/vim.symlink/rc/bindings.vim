let mapleader = "\<space>"

"buffers
nmap <leader>[ :bp<cr>
nmap <leader>] :bn<cr>
nmap <leader>- :bd<cr>
nmap <leader>= :ls<cr>

nmap <leader>/ :noh<cr>
"tabs
nmap <leader>{ :tabp<cr>
nmap <leader>} :tabn<cr>
nmap <leader>+ :tabnew<cr>
nmap <leader>_ :tabc<cr>

nmap <leader>g :Goyo<cr>
nmap <leader><space> :StripWhitespace<cr>

vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

nnoremap \ :NERDTreeToggle<cr>
