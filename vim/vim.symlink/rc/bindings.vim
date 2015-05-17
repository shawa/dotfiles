let mapleader = "\<space>"
"just do it, it makes everything so much nicer

"buffer management
nmap <leader>[ :bp<cr>
nmap <leader>] :bn<cr>
nmap <leader>- :bd<cr>
nmap <leader>= :ls<cr>
nmap <leader>e :e

"tab management
nmap <leader>{ :tabp<cr>
nmap <leader>} :tabn<cr>
nmap <leader>+ :tabnew<cr>
nmap <leader>_ :tabc<cr>

"window management
map <leader>\| :vsplit<cr>
map <leader>\\ :split<cr>
map <leader>H :vertical resize -5<cr>
map <leader>J :resize +5<cr>
map <leader>K :resize -5<cr>
map <leader>L :vertical resize +5<cr>
"cycle windows
noremap <tab>   :wincmd w <cr>

"line movements with arrow keys
noremap <right> >>
noremap <left>  <<
"drag current line
noremap <down>  :m .+1    <cr>
noremap <up>    :m .-2    <cr>

"insert mode movement
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>a
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-^> <C-o><C-^>

"nicer spell usage
"I'm feeling lucky
nnoremap \s 1z=
"I wasn't lucky
nnoremap \\s z=
"Add as correct
nnoremap \S zg


"reload
nmap <leader>R :source ~/.vimrc<cr>

"toggle weirdo modes
nmap <leader>ll :set list!<cr>

"plugin bindings
map <leader><space> :StripWhitespace<cr>
map <leader>G :Goyo <cr>

"un-highlight search highlight
map <leader>/ :noh<cr>

"running the current buffer as script
nnoremap <leader>X :! chmod +x % <cr>
nnoremap <leader>r :!%:p <cr>

"Git fugitive is seriously good
nmap <leader>c :Gcommit -a <cr>
nmap <leader>s :Gstatus    <cr>
nmap <leader>d :Gdiff      <cr>
