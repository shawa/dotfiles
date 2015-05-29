call plug#begin('~/.vim/plugged')
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
Plug 'plasticboy/vim-markdown'        "markdown mode
Plug 'vim-scripts/ledger.vim'         "gnu ledger syntax
Plug 'justinmk/vim-syntax-extra'      "better c definitions

"Syntactic/textual thingers
Plug 'scrooloose/syntastic'           "various linter support
Plug 'Valloric/YouCompleteMe'         "the be-all end-all of auto completion

"File handling
Plug 'scrooloose/nerdtree'            "filesytem explorer
Plug 'jamessan/vim-gnupg'             "transparent editing of encrypted files

call plug#end()

