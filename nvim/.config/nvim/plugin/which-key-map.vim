let g:keys = {}

let g:keys.b = {'name': '+buffers'}
let g:keys.b.b = 'list'
let g:keys.b.d = 'delete'
let g:keys.b.h = 'start screen'
let g:keys.b.l = 'limelight'
let g:keys.b.p = 'copy to pasteboard'
let g:keys.b.s = 'scratch'
let g:keys.b.t = 'terminal'
let g:keys.b.w = 'strip whitespace'
let g:keys.b.z = 'zen mdoe'

let g:keys.e = {'name': 'errors'}
let g:keys.e.d = 'details'
let g:keys.e.n = 'next'
let g:keys.e.s = 'previous'

let g:keys.f = {'name': '+files'}
let g:keys.f.e = {'name': '+init.vim'}
let g:keys.f.e.R = 'source and update plugins'
let g:keys.f.e.d = 'edit'
let g:keys.f.e.r = 'source'

let g:keys.f.f = 'find'
let g:keys.f.g = 'find changed'
let g:keys.f.r = 'reload from disk'
let g:keys.f.s = 'save'

let g:keys.h = {'name': '+help'}
let g:keys.h.h = {'name': 'search'}

let g:keys.g = {'name': '+git'}
let g:keys.g.P = 'pull'
let g:keys.g.b = 'blame'
let g:keys.g.p = 'push'
let g:keys.g.s = 'status'

let g:keys.h.p = {'name': '+help'}
let g:keys.h.h = 'search'

let g:keys.p = {'name': '+project'}
let g:keys.p.f = 'find files'

let g:keys.q = {'name': '+quitting'}
let g:keys.q.q = 'close'

let g:keys.s = {'name': '+spelling'}
let g:keys.s.n = 'next error'
let g:keys.s.p = 'previous error'
let g:keys.s.s = 'fix with first suggestion'

let g:keys.w = {'name': '+windows'}

let g:keys.w['-'] = 'split'
let g:keys.w['/'] = 'vertical split'
let g:keys.w['='] = 'equalise'
let g:keys.w['F'] = 'new tab'
let g:keys.w['['] = 'previous tab'
let g:keys.w[']'] = 'next tab'
let g:keys.w['d'] = 'delete'
let g:keys.w['h'] = 'focus left'
let g:keys.w['j'] = 'focus down'
let g:keys.w['k'] = 'focus up'
let g:keys.w['l'] = 'focus right'

let g:keys.j = 'jump to character'
let g:keys['js'] = 'jump to 2 characters'

call which_key#register('<Space>', "g:keys")
