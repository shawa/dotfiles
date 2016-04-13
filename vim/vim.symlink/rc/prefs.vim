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
au BufWrite * Neomake

" let g:syntastic_python_python_exec = 'python3'
" let g:syntastic_python_checkers = ['flake8', 'mypy']
" let g:syntastic_python_flake8_exe = 'python3 -m flake8'
" let g:syntastic_enable_elixir_checker = 1

"the unicode signs look awful, sorry
let g:neomake_error_sign = { 'text' : 'E' }
let g:neomake_warning_sign = { 'text' : 'W' }
let g:neomake_message_sign = { 'text' : 'M' }
let g:neomake_informational_sign = { 'text' : 'i' }
set dictionary=/usr/share/dict/words
