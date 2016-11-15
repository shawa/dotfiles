if exists('b:current_syntax') | finish|  endif

syntax match semFormula "φ\|ψ"
syntax match semJustification "ass\."
syntax match semJustification "prem\."
syntax match semJustification "⊥i"
syntax match semJustification "⊤i"
syntax match semJustification "¬i"
syntax match semJustification "¬e"
syntax match semJustification "¬¬e"
syntax match semJustification "→i"
syntax match semJustification "→e"
syntax match semJustification "∧i"
syntax match semJustification "∧e1"
syntax match semJustification "∧e2"
syntax match semJustification "∨i1"
syntax match semJustification "∨i2"
syntax match semJustification "∨e"
syntax match semJustification "∃i"

syntax match semProofOperator "⊢\|⊨"
syntax match semQuantifier "∃[^ie]\|∀[^ie]"

syntax match semConstant "⊤\|⊥"

hi def link semJustification Statement
hi def link semQuantifier Repeat
hi def link semFormula Constant
hi def link semProofOperator Operator

hi Operator ctermfg=167
hi Repeat ctermfg=167
hi SemConstant ctermfg=208

let b:current_syntax = 'semFormula'

"φ ψ P Q
"∃ ∀ ¬ ∨ ∧

