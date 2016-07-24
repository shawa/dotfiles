colorscheme molokai
set background=dark

filetype plugin indent on
set relativenumber
set number
set hlsearch
set incsearch
set ruler
set showmatch
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set showcmd

set vb
set t_vb=

set dictionary=/usr/share/dict/words
" au BufWritePost,BufEnter * Neomake
" 
" "the unicode signs look awful, sorry
" let g:neomake_error_sign = { 'text' : 'E' }
" let g:neomake_warning_sign = { 'text' : 'W' }
" let g:neomake_message_sign = { 'text' : 'M' }
" let g:neomake_informational_sign = { 'text' : 'i' }

let g:rainbow_active = 1
let g:rainbow_conf = {
\   'ctermfgs': ['red', 'blue', 'magenta', 'yellow', 'darkblue', 'green', 'brown'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}
