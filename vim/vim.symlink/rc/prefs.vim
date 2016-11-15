colorscheme noctu
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
set foldlevelstart=10
set dictionary=/usr/share/dict/words
set completeopt=menu

let g:goyo_width = 90
let g:airline_theme = 'bubblegum'

autocmd! BufWritePost,BufEnter * :StripWhitespace
autocmd! BufWritePost,BufEnter * Neomake

augroup mine
    au BufWinEnter * sign define mysign
    au BufWinEnter * exe "sign place 1337 line=1 name=mysign buffer=" . bufnr('%')
augroup END

let g:rainbow_active = 1
