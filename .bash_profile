#Alias list by permissions
alias l='ls -CF --color=auto'
alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias lsv='ls -v --color=auto'
alias lsd='ls -l --color=auto'
alias ll='ls -alF --color=auto'
alias cless='less -r'
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
alias gmgrp='gem grep'
alias ggrp='gem list | grep'
alias gel='gem list'
alias r3='rvm use ruby-1.9.2-p290@onions'
alias r2='rvm use ruby-1.8.7@onions'
alias bitchx='/home/pankaj/Softwares/bitchx/BitchX'
alias beg='bundle exec guard'
alias db:c='rake db:create'
alias db:m='rake db:migrate'
alias db:d='rake db:drop'
alias db:seed='rake db:seed'
alias db:s='rake db:setup'
alias db:r='rake db:migrate:redo'
alias rdbt='rails dbconsole test -p --mode line'
alias rdbc='rails dbconsole --mode line'
alias rs='rails server'
alias rc='rails console'
alias rexd='vncviewer 192.168.3.94'
alias pep='rvm use rails-1.9.3-p125@petpro'
alias heroku:db:drop='heroku run su rake db:drop'
alias gphm='git push heroku master'
alias h:db:p='heroku db:push'
alias alex-connect='ssh alex@192.168.3.234'
alias cd~='cd ~'
alias cd.='cd ..'
alias cd..='cd ../../'
alias cd...='cd ../../../'
alias cd....='cd ../../../../'
alias junkemacs='emacs-snapshot-gtk -q -l ~/Softwares/emacs-starter-kit/init.el'
alias emcs='emacs --daemon'
alias emcl='r3;emacsclient -nw'

alias rcon='rails console'
alias rmrf='rm -rf'
alias ccat='pygmentize'
alias src='source ~/.bash_profile'
alias rr='rake routes'
alias spark='~/Softweres/Spark;./spark'

alias begin='r3;emcs;cd ~/Development/its_onions3/onions'

#Set Xterm to use 256 color
export TERM=xterm-256color

#Setup Default Editor
export EDITOR=emacsclient -nw

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

PATH=$PATH:$HOME/.rvm/bin:/usr/local/cmucl-20c/bin/:~/Softwares/bitchx:~/Softwares/git-info:~/.custom_scripts

#SCM Breeze
[ -s "/home/pankaj/.scm_breeze/scm_breeze.sh" ] && . "/home/pankaj/.scm_breeze/scm_breeze.sh"

#Sublime Alias`
alias st2='$HOME/Softwares/Sublime\ Text\ 2/sublime_text &'
alias opt='clear;source $HOME/.bash_profile'

echo "$(tput setaf 7)$(tput setab 1)Select an app:$(tput sgr0)"
tput setaf 3

select i in irb emacs rubinius node.js gnu-smalltalk cmucl bash clisp clojure opt vim sublime source bitchx spark
do
tput bold
  tput setaf 3
  case $i in
      irb) irb --simple-prompt;;
      emacs) emacs-snapshot-gtk;;
      rubinius) rvm use rbx;rbx;;
      node.js) node;;
      gnu-smalltalk) gst;;
      cmucl) lisp;;
      clisp) clisp;;
      clojure) clojure;;
      opt) echo "Type opt when in bash for this menu.";;
      source) source $HOME/.bash_profile;;
      bitchx) bitchx;;
			spark) spark;;
      vim) vim;;
      sublime) st2;;
      bash) clear;break;;
  esac
tput sgr0
done

function header_clock {
		tput cuu1
		tput sc
		let x_cols=$(tput cols)-33
		tput cup 0 ${x_cols}
		tput setaf 4 ; tput bold
		echo -n "["
		tput setaf 1
		echo -n "$(date +%c)"
		tput setaf 4 ; tput bold
		echo -n "]"
		tput rc
}

export CLICOLOR=1
#export LSCOLORS=BxFxCxDxBxegedabagacad
export LSCOLORS='Gxfxcxdxdxegedabagacad'

PROMPT_COMMAND=header_clock

export PS1="\[\$(tput setaf 147)\]\n\w\n\[\$(tput setab 8)\]\[\$(tput setaf 7)\]\[\$(tput bold)\]\[\$(git_tree)\] ↩\[\$(tput sgr0)\]\[\$(tput setaf 198)\] ™\[\$(tput setaf 220)\]➤ \[\$(tput sgr0)\]"

export JRUBY_OPTS=--1.8

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=4000
HISTFILESIZE=8000

#LESSPIPE -- less file processing
eval "$(lesspipe)"

export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s";
export LESS=" -R ";

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
