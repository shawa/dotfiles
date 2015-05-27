call plug#begin('~/.vim/plugged')
"Color scheme
Plug 'baskerville/bubblegum'

"UI Utilities, editing stuff
Plug 'bling/vim-airline'              "status bar
Plug 'airblade/vim-gitgutter'         "show git changes in gutter
Plug 'tpope/vim-fugitive'             "Git wrapper
Plug 'junegunn/goyo.vim'              "something of a 'zen mode'
Plug 'oblitum/rainbow'                "rainbow parentheses
Plug 'junegunn/vim-peekaboo'          "show register contents on \" or \@
Plug 'Terryma/vim-multiple-cursors'   "multiple cursors
Plug 'ntpeters/vim-better-whitespace' "highlight and strip trailing whitespace
Plug 'godlygeek/tabular'              "table formatting (install before vim-markdown)

"Supporting Libs
Plug 'MarcWeber/vim-addon-mw-utils'   "'interpret a file by function and cache file automatically'
Plug 'tomtom/tlib_vim'                "utility functions

"Language Support
Plug 'sukima/xmledit'                 "XML mode
Plug 'wting/rust.vim'                 "rust language
Plug 'vim-scripts/armasm'             "ARM assembly language
Plug 'vim-scripts/ledger.vim'         "gnu ledger syntax
Plug 'othree/yajs.vim'                "ES6 support
Plug 'justinmk/vim-syntax-extra'      "better c definitions
Plug 'plasticboy/vim-markdown'

"Syntactic/textual thingers
Plug 'scrooloose/syntastic'           "various linter support

if has('mac')                           "the be-all end-all of auto completion
    Plug 'Valloric/YouCompleteMe'
end

"File handling
Plug 'scrooloose/nerdtree'            "filesytem explorer
Plug 'jamessan/vim-gnupg'             "transparent editing of symetrically-encrypted files

call plug#end()

