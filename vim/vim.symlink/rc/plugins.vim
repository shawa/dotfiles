call plug#begin('~/.vim/plugged')
"Colorscheme
Plug 'baskerville/bubblegum'

"UI Utilities, editing stuff
Plug 'bling/vim-airline'              "status bar
Plug 'airblade/vim-gitgutter'         "show git changes in gutter
Plug 'junegunn/goyo.vim'              "something of a 'zen mode'
Plug 'oblitum/rainbow'                "rainbow parentheses
Plug 'junegunn/vim-peekaboo'          "show register contents on \" or \@
Plug 'Terryma/vim-multiple-cursors'   "multiple cursors
Plug 'ntpeters/vim-better-whitespace' "highlight and strip trailing whitespace
Plug 'godlygeek/tabular'            "table formatting (install before vim-markdown)


"Suprting Libs
Plug 'MarcWeber/vim-addon-mw-utils'   "'interpret a file by function and cache file automatically'
Plug 'tomtom/tlib_vim'                "utility functions

"Language Support
Plug 'sukima/xmledit'                 "xml mode
Plug 'wting/rust.vim'                 "rust language
Plug 'vim-scripts/armasm'             "ARM assembly languge
Plug 'vim-scripts/ledger.vim'         "gnu ledger syntax
Plug 'othree/yajs.vim'                "ES6 support
Plug 'justinmk/vim-syntax-extra'      "better c definitions
Plug 'plasticboy/vim-markdown'

"Synctic/textual thingers
Plug 'scrooloose/syntastic'           "various linter support

if has('mac')                           "the be-all end-all of autocompletion
    Plug 'Valloric/YouCompleteMe'
end

"Filehandling
Plug 'jamessan/vim-gnupg'             "transparent editing of symetrically-encrypted files

call plug#end()

