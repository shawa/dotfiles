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

set timeoutlen=1000 ttimeoutlen=0

set vb
set t_vb=

set dictionary=/usr/share/dict/words

let g:pymode_folding = 0
let g:pymode_doc = 0
let g:pymode_lint_ignore = "E0602,F821"

let g:syntastic_javascript_checkers = ['eslint']

let g:goyo_width = 90
set completeopt=menu

set printfont="Fira Code"
