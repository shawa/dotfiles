let mapleader = "\<space>"
map <leader>[ :tabp<cr>
map <leader>] :tabnext<cr>
map <leader>- :tabc<cr>
map <leader>= :tabnew<cr>
map <leader>R :source ~/.vimrc<cr>
map <leader>w :w<cr>
map <leader>q :q<cr>
map <leader>wq :wq<cr>
map <leader>Q :q!<cr>
map <leader><space> :StripWhitespace<cr>
map <leader>" :NERDTreeTabsToggle<cr>
map <leader>' :NERDTreeFocusToggle<cr>

map <leader>n :RltvNmbr<cr>
map <leader>N :RltvNmbr!<cr>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

nmap <leader>pp :set paste!<cr>
nmap <leader>ll :set list!<cr>

nnoremap ,, :noh<cr>

"breaking bad habits
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Mash j and k to escape insert mode
inoremap jk <esc>
inoremap kj <esc>

nnoremap <leader>r :!%:p <ENTER>

inoremap <expr>  <C-K>   BDG_GetDigraph()

"I have no idea what this does anymore, but something might depend on it :v
noremap <silent> <Leader>vs :<C-u>let @z=&so<cr>:set so=0 noscb<cr>:bo vs<cr>Ljzt:setl scb<cr><C-w>p:setl scb<cr>:let &so=@z<cr>
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'.synIDattr(synID(line("."),col("."),0),"name") . "> lo<".synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>
