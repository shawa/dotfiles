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
map <leader>\\ :split<cr>
map <leader>H :vertical resize -5<cr>
map <leader>J :resize +5<cr>
map <leader>K :resize -5<cr>
map <leader>L :vertical resize +5<cr>

noremap <right> :wincmd l <cr>
noremap <left> :wincmd h <cr>
noremap <up>   :wincmd k <cr>
noremap <down> :wincmd j <cr>

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

"accomodating bad habits
map Q <nop>
command! Q q
command! W w
command! Qall qall

" Mash j and k to panic back to normal mode
imap jk <esc>
imap kj <esc>
imap zx <esc> :w <cr> i
imap xz <esc> :w <cr> i

"plugin bindings
map <leader><space> :StripWhitespace<cr>
map <leader>G :Goyo <cr>

runtime plugin/dragvisuals.vim

vmap  <expr>  H  DVB_Drag('left')
vmap  <expr>  L  DVB_Drag('right')
vmap  <expr>  J  DVB_Drag('down')
vmap  <expr>  K  DVB_Drag('up')
vmap  <expr>  D  DVB_Duplicate()

"un-highlight highlighted higlights after searching highlighted them
nnoremap ,, :noh<cr>

"running the current buffer as script
nnoremap <leader>X :! chmod +x % <cr>
nnoremap <leader>r :!%:p <cr>

"I have no idea what this does anymore, but something might depend on it :v
noremap <silent> <leader>vs :<C-u>let @z=&so<cr>:set so=0 noscb<cr>:bo vs<cr>Ljzt:setl scb<cr><C-w>p:setl scb<cr>:let &so=@z<cr>
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name" . '> trans<'.synIDattr(synID(line("."),col("."),0),"name") . "> lo<".synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>
