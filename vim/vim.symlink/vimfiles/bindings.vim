let mapleader = "\<space>"

"buffer stuffer
map <leader>[ :bp<cr>
map <leader>] :bn<cr>
map <leader>- :bd<cr>
map <leader>_ :%bd<cr>
map <leader>= :ls<cr>
map <leader>e :e

"utility stuff
nmap <leader>R :source ~/.vimrc<cr>
nmap <leader>w :w<cr>
nmap <leader>W :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>
nmap <leader>wq :wq<cr>
nmap <leader>WQ :wq!<cr>

nmap <leader>pp :set paste!<cr>
nmap <leader>ll :set list!<cr>

map <leader><space> :StripWhitespace<cr>
map <leader>n :RltvNmbr<cr>
map <leader>N :RltvNmbr!<cr>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

nnoremap ,, :noh<cr>

"window management
map <Leader>\| :vsplit<cr>
map <leader>{ :vertical resize -5<cr>
map <leader>} :vertical resize +5<cr>


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
