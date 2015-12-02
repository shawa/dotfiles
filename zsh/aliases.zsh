alias reload!='. ~/.zshrc'
alias cal='cal -y'
alias yt='youtube-dl'
alias tx='tmux a -d || (cd; tmux)'
alias qr='qrencode -t ANSI'
alias sl='sl -ea'
alias au='sox -t raw -r44100 -b16 -e unsigned-integer - -tcoreaudio' # sort of /dev/audio
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome 2> /dev/null > /dev/null &'

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
