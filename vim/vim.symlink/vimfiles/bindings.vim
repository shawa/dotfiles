map <leader>[ :tabp<CR>
map <leader>] :tabnext<CR>
map <leader>- :tabc<CR>
map <leader>= :tabnew<CR>
map <leader>R :source ~/.vimrc<CR>
map <leader>w :w<cr>
map <leader>q :q<cr>
map <leader>wq :wq<cr>
map <leader>Q :q!<cr>
map <leader><space> :StripWhitespace<CR>
map <leader>" :NERDTreeTabsToggle<CR>
map <leader>' :NERDTreeFocusToggle<CR>
nnoremap <leader>r :!%:p <ENTER>

"I have no idea what this does anymore, but something might depend on it :v
noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'.synIDattr(synID(line("."),col("."),0),"name") . "> lo<".synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
