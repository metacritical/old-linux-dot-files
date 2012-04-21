#Alias list by permissions
alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias lsv='ls -v --color=auto'
alias lsd='ls -l --color=auto'
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

#Sublime Alias`
alias st2='$HOME/Softwares/Sublime\ Text\ 2/sublime_text &'
alias opt='source $HOME/.bash_profile'
echo "$(tput setaf 7)$(tput setab 1)Select an app:$(tput sgr0)"
tput setaf 3
#Set Xterm to use 256 color
export TERM=xterm-256color

select i in irb emacs rubinius node.js gnu-smalltalk cmucl bash clisp clojure opt vim sublime source
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
      vim) vim;;
      sublime) st2;;
      bash) break;;
  esac
tput sgr0
done
export CLICOLOR=1
export LSCOLORS=BxFxCxDxBxegedabagacad
export PS1="\[$(tput bold)$(tput setaf 3)\]$(pwd)/\[$(tput setaf 5)\]\w\n∑\@\[$(tput setaf 1)\] ™➔ \[$(tput sgr0)\]"
export JRUBY_OPTS=--1.8