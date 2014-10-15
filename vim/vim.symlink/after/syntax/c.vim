syn match ArrowHead contained ">" conceal cchar=▻
syn match ArrowTail contained "-" conceal cchar=─
syn match ArrowFull "->" contains=ArrowHead,ArrowTail

syn cluster cParenGroup add=ArrowTail,ArrowHead

hi conceal ctermfg=NONE ctermbg=NONE


