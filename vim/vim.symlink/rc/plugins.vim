call plug#begin('~/.vim/plugged')
"UI Utilities, editing stuff
Plug 'bling/vim-airline'              "status bar
Plug 'airblade/vim-gitgutter'         "show git changes in gutter
Plug 'tpope/vim-fugitive'             "Git wrapper
Plug 'oblitum/rainbow'                "rainbow parentheses
Plug 'ntpeters/vim-better-whitespace' "highlight and strip trailing whitespace

"Supporting Libs
"Plug 'MarcWeber/vim-addon-mw-utils'   "'interpret a file by function and cache file automatically'
"Plug 'tomtom/tlib_vim'                "utility functions

"File handling
Plug 'scrooloose/nerdtree'            "filesytem explorer
Plug 'jamessan/vim-gnupg'             "transparent editing of encrypted files

"Graveyard
"Plug 'Terryma/vim-multiple-cursors'   "multiple cursors
"Plug 'godlygeek/tabular'              "table formatting (install before vim-markdown)
"Plug 'scrooloose/syntastic'           "various linter support
"Plug 'Valloric/YouCompleteMe'         "the be-all end-all of auto completion
"Plug 'junegunn/goyo.vim'              "something of a 'zen mode'
call plug#end()

