let g:VIMHOME=expand('<sfile>:p:h:h') . '/nvim'


call plug#begin(g:VIMHOME . '/plugged')
" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
"
" Git Client (It's no magit :[ )
Plug 'tpope/vim-fugitive'
" Directory navigation
Plug 'tpope/vim-vinegar'

" Text Editing
" Align columns of text
Plug 'junegunn/vim-easy-align'
" Better search behaviour
Plug 'junegunn/vim-slash'
" Highlight and strip trailing whitespace
Plug 'ntpeters/vim-better-whitespace'
" Text surrounds
Plug 'tpope/vim-surround'
" Zen Mode
Plug 'junegunn/goyo.vim'
" Even more Zen
Plug 'junegunn/limelight.vim'
" Completion Engine
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Linting Engine
Plug 'w0rp/ale'
" Diff markers
Plug 'airblade/vim-gitgutter'
" Project-wide search
Plug 'mhinz/vim-grepper'
" Movement
Plug 'easymotion/vim-easymotion'
" Commenting
Plug 'scrooloose/nerdcommenter'
" Seamless tmux/vi pane selection
Plug 'christoomey/vim-tmux-navigator'
" Unix Helpers
Plug 'tpope/vim-eunuch'
" Autoformatting
Plug 'chiel92/vim-autoformat'
" Useful keymaps
Plug 'tpope/vim-unimpaired'
" Custom operators
Plug 'kana/vim-operator-user'
" Highlight yanked area
Plug 'haya14busa/vim-operator-flashy'

" Language Support
Plug 'elixir-editors/vim-elixir'
Plug 'elmcast/elm-vim'
Plug 'jceb/vim-orgmode'
Plug 'kchmck/vim-coffee-script'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-rails'
Plug 'hashivim/vim-terraform'
Plug 'aklt/plantuml-syntax'

"Enhance
Plug 'kana/vim-textobj-user'
Plug 'rhysd/vim-textobj-ruby'

Plug 'rbgrouleff/bclose.vim'
Plug 'iberianpig/tig-explorer.vim'

" UI
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'liuchengxu/vim-which-key'

" Hex Preview
Plug 'chrisbra/Colorizer'

"Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:elm_setup_keybindings = 0
let g:ale_sign_column_always = 0

let g:startify_custom_header = ''

let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8'

set diffopt=vertical
set number
set relativenumber
set expandtab
set hidden
set autoread
set showcmd
set tabstop=2
set shiftwidth=2
set backspace=0
set inccommand=split
set cursorline
set undofile
set termguicolors
set clipboard=unnamedplus
set tags=./ctags-index
set nottimeout
set notimeout

autocmd filetype crontab setlocal nobackup nowritebackup

let mapleader = "\<Space>"

let g:fzf_command_prefix = 'Fzf'

let g:terraform_fmt_on_save=1
let g:terraform_align=1

let g:deoplete#enable_at_startup = 1

function! MyHighlights() abort
    highlight Comment     cterm=italic ctermbg=76  ctermfg=16  gui=NONE guibg=#72554a guifg=#ffeeee
    highlight Visual                                                    guibg=#555555
    highlight Normal                                                                  guifg=#ffffff
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END

colorscheme dracula

" Only highlight the first 120 columns, no more minified spookery
" Peter you're a genius

set synmaxcol=256

nnoremap ^ 0
nnoremap 0 ^
nnoremap ' "
nnoremap " '

map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>
nnoremap <tab> za

nnoremap <leader>' :vsplit <cr> <c-w>r :terminal <cr> A
nnoremap <leader>/ :FzfRg
nnoremap <leader><tab> <c-^>

nnoremap <leader>QQ :qa!<cr>

nnoremap <leader>bb :FzfBuffers<cr>
nnoremap <leader>bd :bdelete!<cr>
nnoremap <leader>bf :exec '%!' . &formatprg <cr>
nnoremap <leader>bh :Startify<cr>
nnoremap <leader>bl :Limelight!!<cr>
nnoremap <leader>bp :w !pbcopy<cr><cr>
vnoremap <leader>bp "+y
nnoremap <leader>bs :e ~/.scratch.md<cr>
nnoremap <leader>bt :terminal<cr>
nnoremap <leader>bw :StripWhitespace<cr>
nnoremap <leader>bz :Goyo<cr>

nnoremap <leader>ed :ALEDetail<cr>
nnoremap <leader>en :ALENext<cr>
nnoremap <leader>ep :ALEPrevious<cr>

nnoremap <leader>feR :so ~/.config/nvim/init.vim <cr> :PlugUpdate <cr>
nnoremap <leader>fed :tabnew<cr>:edit ~/.config/nvim/init.vim<cr>
nnoremap <leader>fer :so ~/.config/nvim/init.vim <cr>
nnoremap <leader>ff :FzfFiles<cr>
nnoremap <leader>fg :FzfGFiles?<cr>
nnoremap <leader>fr :edit<cr>
nnoremap <leader>fs :write<cr>

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gP :Gpull --rebase<cr>
nnoremap <leader>gp :Gpush<cr>

nnoremap <leader>hh :FzfHelp<cr>

nnoremap <leader>pf :FzfFiles<cr>

nnoremap <leader>qq :q<cr>

nnoremap <leader>sn ]s<cr>
nnoremap <leader>sp [s<cr>
nnoremap <leader>ss 1z=<cr>

nnoremap <leader>w- :split<cr>
nnoremap <leader>w/ :vsplit<cr>
nnoremap <leader>w= <c-w>=
nnoremap <leader>wF :tabnew<cr>
nnoremap <leader>w[ :tabprevious<cr>
nnoremap <leader>w] :tabnext<cr>
nnoremap <leader>wd :q<cr>
nnoremap <leader>wh <c-w>h
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wl <c-w>l

map  <leader>j <Plug>(easymotion-bd-f)
nmap <leader>j <Plug>(easymotion-overwin-f)
nmap <leader>js <Plug>(easymotion-overwin-f2)

map <leader>jl <Plug>(easymotion-bd-jk)

nmap <leader>jl <Plug>(easymotion-overwin-line)
map  <leader>jw <Plug>(easymotion-bd-w)
nmap <leader>jw <Plug>(easymotion-overwin-w)
