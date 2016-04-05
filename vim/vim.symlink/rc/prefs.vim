syntax on
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


set vb
set t_vb=

set background=dark
colorscheme molokai

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['flake8', 'mypy']
let g:syntastic_python_flake8_exe = 'python3 -m flake8'

set dictionary=/usr/share/dict/words
