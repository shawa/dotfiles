set noexpandtab
setlocal autoindent
setlocal smarttab
setlocal spell

imap $ €

autocmd BufWritePre <buffer> StripWhitespace

map <leader>a :r !date '+\%Y/\%m/\%d \%H:\%M:\%S' <cr>A 
map <leader>b :!ledger -f % balance <cr>
map <leader>r :!ledger -f % register <cr>

