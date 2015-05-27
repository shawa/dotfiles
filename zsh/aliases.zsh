alias reload!='. ~/.zshrc'
alias cal='cal -y'
alias yt='youtube-dl'
alias tx='tmux a -d || (cd; tmux)'
alias qr='qrencode -t ANSI'


if [ $(uname) = 'Linux' ];
then
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

mkcd() {
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}
