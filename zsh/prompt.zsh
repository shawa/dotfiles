autoload colors && colors

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
      echo "%{$fg_bold[white]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "%{$fg_bold[yellow]%}$(git_prompt_info)%{$reset_color%}"
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
    echo " %{$fg_bold[magenta]%}↑%{$reset_color%} "
  fi
}

user_name() {
    echo "%n@%M% "
}

directory_name() {
  echo "%{$fg_bold[gray]%}%~ %{$reset_color%}"
}


set_prompt () {
    export PROMPT=$'\n$(directory_name)$(git_dirty)$(need_push)\n› '
    export RPROMPT="%*"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
