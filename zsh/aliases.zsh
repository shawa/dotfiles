alias reload!='. ~/.zshrc'
alias cal='cal -y'
alias yt='youtube-dl'
alias tx='tmux a -d || (cd; tmux)'

# not my cup of concurrent tea
brew() {
    if [[ $@ == "install nodejs" ]]; then
        echo "\e[4;31mError\e[0m: Come on, you're better than that :(";
    else command brew "$@";
    fi;
}

# this is pretty handy
mkcd() {
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}
