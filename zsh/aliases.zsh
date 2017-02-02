alias reload!='. ~/.zshrc'
alias cal='cal -y'
alias tx='tmux a -d || (cd; tmux)'
alias qr='qrencode -t ANSI'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome 2> /dev/null > /dev/null &'
alias cmus='/usr/local/bin/cmus 2> /dev/null' # suppress the complaints about Audo Units
alias urm='/bin/rm'
alias prolog='swipl'
alias gcc='/usr/local/Cellar/gcc/5.3.0/bin/gcc-5'

if $(gls &>/dev/null)
then
  alias ls="gls --color -F"
  alias l="gls --color -lAh"
  alias ll="gls --color -l"
  alias la="gls --color -A"
fi

alias org='open -a emacs ~/Documents/college/SS/general/plan.org'
# rm(){ srm $@ & }

remote() {
    [ -z "$1" ] && return

    local name="$1"; shift
    local URL=$(ssh cube NAME="$name" 'bash -s' < "/$HOME/.dotfiles/bin/repo")

    if [ "$1" = "-c" ];  then
        git clone "$URL"
    else
        echo "$URL"
    fi
}

tip() {
    touch "$1"
    git add "$1"
    git commit -am "add $1"
    git push
}

mkcd() {
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}

pname () {
    tr '[:upper:]' '[:lower:]' \
        | tr '\n' ' ' \
        | tr -cd '[0-9a-z] ' \
        | tr ' ' '-'
}


if [ $(uname) = 'Linux' ];
then
    alias ls='ls --color=auto'
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

alias vim='nvim'
alias vi='nvim'
alias em="emacsclient"
