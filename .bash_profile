#Alias list by permissions
alias lsd='ls -l'
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


#RVM PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#Sublime Alias`
alias subl='$HOME/Downloads/Sublime\ Text\ 2/sublime_text'
alias opt='source $HOME/.bash_profile'
echo "$(tput setaf 7)$(tput setab 1)Select an app:$(tput sgr0)"
tput setaf 3
#Set Xterm to use 256 color
export TERM=xterm-256color

select i in irb emacs rubinius node.js gnu-smalltalk cmucl bash opt vim source
do
tput bold
  tput setaf 3
  case $i in
      irb) irb --simple-prompt;;
      emacs) emacs -nw;;
      rubinius) rvm use rbx;rbx;;
      node.js) node;;
      gnu-smalltalk) gst;;
      cmucl) clisp;;
      opt) echo "Type opt when in bash for this menu.";;
      source) source $HOME/.bash_profile;;
      vim) vim;;
      bash) break;;
  esac
tput sgr0
done
export CLICOLOR=1
export LSCOLORS=BxFxCxDxBxegedabagacad
export PS1="\[$(tput bold)$(tput setaf 3)\]$(pwd)/\[$(tput setaf 5)\]\w\n$(__git_ps1) ∑\@\[$(tput setaf 1)\] ™➔ \[$(tput sgr0)\]"
export JRUBY_OPTS=--1.8