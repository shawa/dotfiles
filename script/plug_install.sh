#!/bin/bash

# Install vim-plug, with rudimentary integrity checking before blindly loading
# it into our config
readonly SHA1SUM='96ab0b0eb46723a8435c01a83c108913e3e8f5fb'
readonly MD5SUM='a3ef17ce46e9e02dba8974ce9dc6751b'

readonly TMPFILE='plug.vim.tmp'
readonly INSTALL_DIR="$HOME/.vim/autoload"
readonly INSTALL_LOC="$INSTALL_DIR/plug.vim"
readonly PLUG_URL='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

curl "$PLUG_URL" > "$TMPFILE" 2> /dev/null

if ([ "$(sha1sum "$TMPFILE")" == "$SHA1SUM  $TMPFILE" ] &&
	[ "$(md5sum "$TMPFILE")" == "$MD5SUM  $TMPFILE" ])
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

