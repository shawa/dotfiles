alias reload!='. ~/.zshrc'
alias cal='cal -y'
alias yt='youtube-dl'
alias t='tmux a -d || (cd; tmux)'
alias qr='qrencode -t ANSI'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome 2> /dev/null > /dev/null &'
alias cmus='/usr/local/bin/cmus 2> /dev/null' # suppress the complaints about Audo Units
alias urm='/bin/rm'
alias prolog='swipl'
alias gcc='/usr/local/Cellar/gcc/5.3.0/bin/gcc-5'

rm(){ srm $@ & }

remote() {
    [ -z $1 ] && return 
    local URL=$(ssh cube "/home/shawa/.dotfiles/bin/repo $1")
    pbcopy <<< $URL
    echo $URL
}

tip() {
    touch "$1"
    git add "$1"
    git commit -am "add $1"
    git push
}

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
