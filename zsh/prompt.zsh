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

pyvenv_active() {
    if [ -n "$VIRTUAL_ENV" ]
    then
        local envdir="$(echo $VIRTUAL_ENV | awk -F '/' '{print $(NF-1)}')"
        echo %{$fg_bold[cyan]%}$envdir%{$reset_color%}
    fi
}

user_name() {
    echo "%n@%{$fg_bold[$HOSTCOLOUR]%}%M%{$reset_color%}%"
}

directory_name() {
  echo "%{$fg_bold[gray]%}%~ %{$reset_color%}"
}


set_prompt () {
    export PROMPT=$'\n$(user_name):$(directory_name)$(git_dirty)$(need_push)$(pyvenv_active)\n› '
    export RPROMPT="%*"
}

precmd() {
   set_prompt
}
