syntax on

syntax include @CS syntax/cs.vim
syntax region csSnip matchgroup=Snip start="(\." end="\.)" contains=@CS

hi link Snip SpecialComment

syntax region atgString start="\"" end="\""
syntax region atgChar start="'" end="'"
syntax region atgComment start="/\*" end="\*/"

syntax keyword atgDirective COMPILER CHARACTERS TOKENS COMMENTS IGNORE PRODUCTIONS FROM TO NESTED

syntax keyword atgOperator "."

hi link atgString String
hi link atgChar String
hi link atgComment Comment
hi link atgDirective Preproc
hi link atgOperator Preproc
