syn region String oneline matchgroup=Delimiter start="\$" end="\$" contains=texMathSymbol
syn region String oneline matchgroup=Delimiter start="\$\$" end="\$\$" contains=texMathSymbol
syn region Statement matchgroup=Delimiter start="\\begin{.*}" end="\\end{.*}" contains=Statement
syn region Statement matchgroup=Delimiter start="{" end="}" contains=Statement

syn match texMathSymbol "\\[a-zA-Z@]\+"
hi def link texMathSymbol Keyword

hi markdownitalic ctermbg=NONE ctermfg=white
hi texMathSymbol ctermfg=147
