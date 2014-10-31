"Defaults. Syntax-specific stuff is in ftplugin
set tabstop=4
set shiftwidth=4
set expandtab

set nu
set backspace=indent,eol,start

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set complete=.,w,b,u,U,t,i,d "scan many things
set showmatch

set backup
set backupdir=~/.vim_backup
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo


set listchars=tab:▸\ ,eol:¬
set scrolloff=3

set laststatus=2
set shell=zsh
set noerrorbells
set ttyfast
set lazyredraw
set more
set showcmd
set wildmode=longest:full
set wildmenu

"Write buffer when window loses focus
au FocusLost * :wa

syntax on
colorscheme molokai

let g:better_whitespace_filetypes_blacklist=['markdown']
