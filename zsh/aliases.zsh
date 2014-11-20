alias reload!='. ~/.zshrc'
alias cal='cal -y'
alias yt='youtube-dl'

brew() {
    if [[ $@ == "install nodejs" ]]; then
        echo "\e[4;31mError\e[0m: Come on, you're better than that :(";
    else command brew "$@";
    fi;
}
