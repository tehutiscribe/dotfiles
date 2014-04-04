alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano PKGBUILD'
alias pacman='sudo /usr/bin/pacman --color=always'
alias ls='ls --color'
alias ll='ls -l --color'
alias la='ls -al --color'
alias dmesg='dmesg --color'
alias adbre='sudo adb kill-server && sudo adb start-server'

# ex - archive extractor
# usage: ex <file>

alias look="ls /usr/share/dict/cracklib-small"
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar -xjf $1   ;;
      *.tar.gz)    tar -xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar -x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar -xf $1    ;;
      *.tbz2)      tar -xjf $1   ;;
      *.tgz)       tar -xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z -x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# prompt
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
BROWSER=/usr/bin/xdg-open
export TERM='xterm-256color'
export LANG="en_US.UTF-8"

EDITOR=vim
export EDITOR

PATH=$PATH:/opt/play-2.2.1/:/usr/share/android-sdk/tools/:/usr/share/android-sdk/platform-tools/
export PATH
