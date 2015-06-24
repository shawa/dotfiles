alias reload!='. ~/.zshrc'
alias cal='cal -y'
alias yt='youtube-dl'
alias tx='tmux a -d || (cd; tmux)'
alias qr='qrencode -t ANSI'

alias sl='sl -ea'

if [ $(uname) = 'Linux' ];
then
    alias ls='ls --color=auto'
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

mkcd() {
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}

ww() {
    chromium "$1"
}

svenv() {
    source 'venv/bin/activate' || echo 'Failed. ./venv/ exists?'
}
