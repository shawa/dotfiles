"syn match ArrowHead contained ">" conceal cchar=▻
"syn match ArrowTail contained "-" conceal cchar=─
"syn match ArrowFull "->" contains=ArrowHead,ArrowTail
"syn cluster cParenGroup add=ArrowTail,ArrowHead

syn match NequalHead contained "=" conceal cchar=═
syn match NequalTail contained "!" conceal cchar=╪
syn match NequalFull "!=" contains=NequalHead,NequalTail
syn cluster cParenGroup add=NequalTail,NequalHead

syn match EqualHead contained "=" conceal cchar=═
syn match EqualTail contained "=" conceal cchar=═
syn match EqualFull "==" contains=EqualHead,EqualTail
syn cluster cParenGroup add=EqualTail,EqualHead



