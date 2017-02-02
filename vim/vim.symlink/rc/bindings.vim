let mapleader = "\<space>"

"buffers
nmap <leader>bp :bp<cr>
nmap <leader>bn :bn<cr>
nmap <leader>bd :bd<cr>
nmap <leader>bl :ls<cr>

"quit
nmap <leader>qq ZZ

"window management
nmap <leader>wh <c-w>h
nmap <leader>wj <c-w>j
nmap <leader>wk <c-w>k
nmap <leader>wl <c-w>l
nmap <leader>wd :q<cr>
nmap <leader>w/ :vsplit<cr>
nmap <leader>w- :split<cr>

nmap <leader>fs :w<cr>
"spelling
nmap <leader>sf 1z=
nmap <leader>sl zg

nmap <leader>/ :noh<cr>
"tabs
nmap <leader>tp :tabp<cr>
nmap <leader>tn :tabn<cr>
nmap <leader>tc :tabnew<cr>
nmap <leader>td :tabc<cr>

nmap <leader>g :Goyo<cr>

nmap <leader><space> :StripWhitespace<cr>

vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

nnoremap <leader>pt :NERDTreeToggle<cr>
