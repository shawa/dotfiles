autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo "%{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "%{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
 echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " is %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

host_color="$(hostcolor)"
user_name() {
  local usercolor=''
  if [[ "$(/usr/bin/whoami)" == 'root' ]]
  then
    usercolor='red'
    hostcolor='red'
  else
    usercolor='green'
  fi
    echo "%{$fg_bold[$usercolor]%}%n%{$reset_color%}@%{$fg_bold[$host_color]%}%M%{$reset_color%}"
}

directory_name() {
  echo "%{$fg_bold[gray]%}%~ %{$reset_color%}"
}


set_prompt () {
    export PROMPT=$'\n$(user_name) $(directory_name)$(git_dirty)$(need_push)\n› '
    export RPROMPT="%! %? %*"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
