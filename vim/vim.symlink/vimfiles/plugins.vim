call plug#begin('~/.vim/plugged')
"UI Utilities, editing stuff
Plug 'bling/vim-airline'                  "status bar
Plug 'airblade/vim-gitgutter'             "show git changes in gutter
Plug 'junegunn/goyo.vim'                  "something of a 'zen mode'
Plug 'oblitum/rainbow'                    "rainbow parentheses
Plug 'junegunn/vim-peekaboo'              "show register contents on \" or \@

"Suprting Libs
Plug 'MarcWeber/vim-addon-mw-utils'       "'interpret a file by function and cache file automatically'
Plug 'tomtom/tlib_vim'                    "utility functions

"Lanage Support
Plug 'sukima/xmledit'                     "xml mode
Plug 'wting/rust.vim'                     "rust language support
Plug 'kchmck/vim-coffee-script'           "coffeescript (urgh) support
Plug 'vim-scripts/armasm'                 "ARM assembly languge
Plug 'vim-scripts/ledger.vim'             "gnu ledger syntax support

"Synctic/textual thingers
Plug 'justinmk/vim-syntax-extra'          "better c definitions
Plug 'scrooloose/syntastic'               "various linter support

"if s('mac')                               "the be-all end-all of autocompletion
"   lugin 'Valloric/YouCompleteMe'
"end

"FilHandling
Plug 'jamessan/vim-gnupg'                 "transparent editing of symetrically-encrypted files

"Edir mechanics
Plug 'Terryma/vim-multiple-cursors'       "multiple cursors
Plug 'ntpeters/vim-better-whitespace'     "highlight and strip trailing whitespace

call plug#end()

