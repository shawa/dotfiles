#!/bin/bash

# Install vim-plug, with rudimentary integrity checking before blindly loading
# it into our config
readonly SHA512SUM='b69c6baf8517fb8ec62056455155250d4c101062e6b5f84572ba1015266deb733e69a64f89ee273e67b5b14d93d967d074b8f7497a96f196a1d3513532dcaa99'
readonly TMPFILE='plug.vim.tmp'
readonly INSTALL_DIR="$HOME/.vim/autoload"
readonly INSTALL_LOC="$INSTALL_DIR/plug.vim"
readonly PLUG_URL='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

curl "$PLUG_URL" > "$TMPFILE" 2> /dev/null

if ([ "$(sha512sum "$TMPFILE")" == "$SHA512SUM  $TMPFILE" ])
then
	echo 'Checksums passed, installing'

	[ -d "$INSTALL_DIR" ] || mkdir "$INSTALL_DIR"
	mv "$TMPFILE" "$INSTALL_LOC"

	vim +PlugInstall +qall
	exit 0
else
	echo 'Checksums failed, tamper/new version?'
	exit 1
fi

