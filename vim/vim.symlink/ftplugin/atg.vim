syntax on
syntax include @CS syntax/cs.vim
syntax region csSnip matchgroup=Snip start="(." end=".)" contains=@CS
hi link Snip SpecialComment
