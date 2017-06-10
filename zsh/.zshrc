source $ZPLUG_HOME/init.zsh

zplug "cswl/zsh-rbenv"
zplug "kiurchv/asdf.plugin.zsh", defer:2
zplug "lukechilds/zsh-nvm"
zplug "mafredri/zsh-async", from:github
zplug "modules/completion", from:prezto
zplug "plugins/autojump", from:oh-my-zsh
zplug "plugins/gpg-agent", from:oh-my-zsh
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "zsh-users/zsh-autosuggestions", use:"zsh-autosuggestions.zsh"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "djui/alias-tips"
zplug load

for a cmd (
  tx 'tmux a -d || tmux'
  vi 'nvim'
  vim 'nvim'
  ls 'ls -Gp'
  iex 'rlwrap -a foo iex'
  s 'open -a emacs'
  reload 'source ~/.zshrc'
  sed 'sed -E'
) alias $a=$cmd

zstyle ':completion:*' menu select

bindkey -v
bindkey '^E' end-of-line
bindkey '^P' up-line-or-history
bindkey '^N' down-line-or-history
bindkey '^ ' autosuggest-execute

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
