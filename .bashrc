alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano PKGBUILD'
alias pacman='sudo /usr/bin/pacman --color=always'
alias ls='ls --color'
alias ll='ls -lh --color'
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

ANDROID_HOME=/usr/share/android-sdk/
export ANDROID_HOME

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/opt/cocos2d-x/tools/cocos2d-console/bin

# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/opt/android-ndk-r9d/

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/usr/share/android-sdk

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/bin

PATH=$PATH:/opt/play-2.2.1/:$ANDROID_HOME:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools/
export PATH

VBOX_USB=usbfs
