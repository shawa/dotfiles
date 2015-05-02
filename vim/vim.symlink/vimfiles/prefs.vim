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

set ttimeoutlen=0 "remove delay after exiting insert mode

set listchars=tab:▸\ ,eol:¬
set scrolloff=3

set laststatus=2
set shell=zsh
set noerrorbells
set ttyfast
set more
set wildmode=longest:full
set wildmenu
set relativenumber



runtime plugin/dragvisuals.vim

vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

" Remove any introduced trailing whitespace after moving...
let g:DVB_TrimWS = 1


"Write buffer when window loses focus
au FocusLost * :wa

syntax on

colorscheme molokai
set background=dark

let g:better_whitespace_filetypes_blacklist=['markdown']
let g:syntastic_python_python_exec = '/usr/local/bin/python3'
let g:ycm_confirm_extra_conf = 0

let g:ycm_filetype_blacklist = {
      \ 'markdown' : 1,
      \ 'text' : 1,
      \ 'pandoc' : 1,
      \ 'vim' : 1,
      \}
au FileType c,python,haskell,coffee,java call rainbow#load()
let g:rainbow_ctermfgs = ['red', 'blue', 'green' , 'yellow', 'magenta', 'white']
