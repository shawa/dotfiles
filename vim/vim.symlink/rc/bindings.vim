"just do it, it makes everything so much nicer
let mapleader = "\<space>"

"buffer management
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

"window navigation
map <leader>\| :vsplit<cr>
map <leader>\\ :split<cr>
map <leader>H :vertical resize -5<cr>
map <leader>J :resize +5<cr>
map <leader>K :resize -5<cr>
map <leader>L :vertical resize +5<cr>

noremap <right> :wincmd l <cr>
noremap <left>  :wincmd h <cr>
noremap <up>    :wincmd k <cr>
noremap <down>  :wincmd j <cr>

"nicer spell usage
"I'm feeling lucky
nnoremap \s 1z=
"I wasn't lucky
nnoremap \\s z=
"Add as correct
nnoremap \S zg


nmap <leader>R :source ~/.vimrc<cr>

"toggle weirdo modes
nmap <leader>ll :set list!<cr>

"plugin bindings
map <leader><space> :StripWhitespace<cr>
map <leader>G :Goyo <cr>

"un-highlight search highlight
nnoremap ,, :noh<cr>

"running the current buffer as script
nnoremap <leader>X :! chmod +x % <cr>
nnoremap <leader>r :!%:p <cr>

