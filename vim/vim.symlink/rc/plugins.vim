call plug#begin('~/.vim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

" Appearance
Plug 'vim-airline/vim-airline'              " nicer statusline
Plug 'vim-airline/vim-airline-themes'       " even nicer statusline
Plug 'vim-scripts/SyntaxRange'              " different highlighting for ranges of code

" Editing
Plug 'ntpeters/vim-better-whitespace'       " highlight and strip trailing whitespace
Plug 'benekastah/neomake'                   " async job control
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') } " async completion
Plug 'vim-scripts/marvim'                   " persistent macro storage
Plug 'junegunn/vim-easy-align'              " nice table alignment

" UI
Plug 'scrooloose/nerdtree'                  " nicer file explorer
Plug 'airblade/vim-gitgutter'               " git additions and changes
Plug 'junegunn/goyo.vim'                    " zen mode

" Langs
Plug 'mlr-msft/vim-loves-dafny'             " dafny
Plug 'elixir-lang/vim-elixir'               " elixir
Plug 'pangloss/vim-javascript'              " better jay ess
Plug 'plasticboy/vim-markdown'              " markdown
Plug 'aklt/plantuml-syntax'                 " uml, yeh
call plug#end()
