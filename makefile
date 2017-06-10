install: homebrew shell emacs stow

stow:
	stow -v  emacs
	stow -v  tmux
	stow -v  nvim
	stow -v  zsh

emacs:
	git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

homebrew:
	/usr/bin/ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew: homebrew
	brew tap Homebrew/bundle
	brew bundle

shell:
	chsh -s /bin/zsh

.PHONY: install
