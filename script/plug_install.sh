readonly INSTALL_DIR="$HOME/.vim/autoload"
readonly INSTALL_LOC="$INSTALL_DIR/plug.vim"
readonly PLUG_URL='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

curl "$PLUG_URL" > "$INSTALL_LOC"
vim +PlugInstall +qall
