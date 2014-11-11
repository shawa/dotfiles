"just do it, it makes everything so much nicer
let mapleader = "\<space>"

"buffer stuffer
nmap <leader>[ :bp<cr>
nmap <leader>] :bn<cr>
nmap <leader>- :bd<cr>
nmap <leader>= :ls<cr>
nmap <leader>e :e

"fab tabs
nmap <leader>{ :tabp<cr>
nmap <leader>} :tabn<cr>
nmap <leader>+ :tabnew<cr>
nmap <leader>_ :tabc<cr>

"wind-oh!
map <leader>\| :vsplit<cr>
map <leader>H :vertical resize -5<cr>
map <leader>L :vertical resize +5<cr>

"shorty-cuts
nmap <leader>R :source ~/.vimrc<cr>
nmap <leader>w :w<cr>
nmap <leader>W :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>Q :q!<cr>
nmap <leader>wq :wq<cr>
nmap <leader>WQ :wq!<cr>

"toggle weirdo modes
nmap <leader>pp :set paste!<cr>
nmap <leader>ll :set list!<cr>

"breaking bad habits
noremap <up> <NOP>
noremap <down> <NOP>
noremap <left> <NOP>
noremap <right> <NOP>

"accomodating bad habits
command Q q
command W w
command Qall qall

" Mash j and k to panic back to normal mode
inoremap jk <esc>
inoremap kj <esc>

"plugin bindings
map <leader><space> :StripWhitespace<cr>
map <leader>n :RltvNmbr<cr>
map <leader>N :RltvNmbr!<cr>

"un-highlight highlighted higlights after searching highlighted them
nnoremap ,, :noh<cr>

"run the current buffer as script
nnoremap <leader>r :!%:p <ENTER>

"I have no idea what this does anymore, but something might depend on it :v
noremap <silent> <leader>vs :<C-u>let @z=&so<cr>:set so=0 noscb<cr>:bo vs<cr>Ljzt:setl scb<cr><C-w>p:setl scb<cr>:let &so=@z<cr>
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name" . '> trans<'.synIDattr(synID(line("."),col("."),0),"name") . "> lo<".synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>
