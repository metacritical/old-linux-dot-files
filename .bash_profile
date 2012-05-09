#Alias list by permissions
alias l='ls -CF --color=auto'
alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias lsv='ls -v --color=auto'
alias lsd='ls -l --color=auto'
alias ll='ls -alF --color=auto'
alias emcs='emacs -nw'
alias gchk='git checkout'
alias gb='git branch'
alias ga='git add'
alias gd='git branch -D'
alias grm='git rm'
alias gcm='git commit'
alias gcl='git clone'
alias gpl='git pull'
alias gps='git push'
alias gil='git log'
alias gst='git status'
alias irb='irb --simple-prompt'
alias ggrp='gem list | grep'
alias gel='gem list'
alias use_rails3='rvm use ruby-1.9.3-p125@rails3'
alias bitchx='/home/pankaj/Softwares/bitchx/BitchX'
alias beg='bundle exec guard'

#Set Xterm to use 256 color
export TERM=xterm-256color


#Bash Enable Color prompt
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

#RVM PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM
PATH=$PATH:$HOME/.rvm/bin:/usr/local/cmucl-20c/bin/:~/Softwares/bitchx:~/Softwares/git-info # Add RVM to PATH for scripting

#SCM Breeze
[ -s "/home/pankaj/.scm_breeze/scm_breeze.sh" ] && . "/home/pankaj/.scm_breeze/scm_breeze.sh"

#Sublime Alias`
alias st2='$HOME/Softwares/Sublime\ Text\ 2/sublime_text &'
alias opt='clear;source $HOME/.bash_profile'

echo "$(tput setaf 7)$(tput setab 1)Select an app:$(tput sgr0)"
tput setaf 3

select i in irb emacs rubinius node.js gnu-smalltalk cmucl bash clisp clojure opt vim sublime source bitchx
do
tput bold
  tput setaf 3
  case $i in
      irb) irb --simple-prompt;;
      emacs) emacs -nw;;
      rubinius) rvm use rbx;rbx;;
      node.js) node;;
      gnu-smalltalk) gst;;
      cmucl) lisp;;
      clisp) clisp;;
      clojure) clojure;;
      opt) echo "Type opt when in bash for this menu.";;
      source) source $HOME/.bash_profile;;
      bitchx) bitchx;;
      vim) vim;;
      sublime) st2;;
      bash) break;;
  esac
tput sgr0
done
export CLICOLOR=1
export LSCOLORS=BxFxCxDxBxegedabagacad
export PS1="\[$(tput bold)$(tput setaf 3)\]$(pwd)/\[$(tput setaf 5)\]\w\n∑\@\[$(tput setaf 1)\] ™➤ \[$(tput sgr0)\]"
export JRUBY_OPTS=--1.8

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=4000
HISTFILESIZE=8000

#LESSPIPE -- less file processing
eval "$(lesspipe)"

export LESSOPEN="| /usr/bin/lesspipe %s";
export LESSCLOSE="/usr/bin/lesspipe %s %s";

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
