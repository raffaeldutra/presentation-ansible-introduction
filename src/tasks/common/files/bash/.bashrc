# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# [prompt]
   black="\[\e[1;30m\]"
     red="\[\e[1;31m\]"
   green="\[\e[1;32m\]"
  yellow="\[\e[1;33m\]"
    blue="\[\e[1;34m\]"
 magenta="\[\e[1;35m\]"
    cyan="\[\e[1;36m\]"
   white="\[\e[1;37m\]"
     off="\[\e[0m\]"

if [ $(id -u) -eq 0 ]; then
  c__def=$red
  c_numb=$red
  c_user=$red
  c_host=$red
  c__tty=$cyan
  c_path=$blue
else
  c__def=$white
  c_numb=$yellow
  c_user=$white
  c_host=$white
  c__tty=$cyan
  c_path=$blue
fi

  ab='['
  fe=']'
  tty="shell $(tty | cut -d/ -f4)"

  char="$"
  at="$c_user\u$c__def@"
  tat="\u@"

if [ "$color_prompt" = yes ]; then
    title="\[\e]0;$tat\h$ab$tty$fe\w\a\]"
    prompt="$c_numb\! $at$c_host\h$c__def$ab$c__tty$tty$c__def$fe[$c_path\w$c__def]$off"
    PS1="$title$prompt"
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt


case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi