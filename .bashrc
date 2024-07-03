# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# gitのプロンプト表示のシェル
if [ -f ~/.git-completion.sh ]; then
      source ~/.git-completion.sh
fi
if [ -f ~/.git-prompt.sh ]; then
      source ~/.git-prompt.sh
fi

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# PS1='\[\e[0m\][\[\e[32m\]\u@\h\[\e[34m\] \W\[\e[35m\]$(__git_ps1 " (%s)")\e[0m\]]\$ '
PS1='[\[\033[32m\]\u@\h\[\033[34m\] \w\[\033[35m\]$(__git_ps1 " (%s)")\[\033[00m\]]\$ '


# User specific aliases and functions
alias ls='ls -F --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias vi='vim'
alias grep='grep --color'
alias ps='ps --sort=start_time'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias dt='cd /mnt/c/Users/261shimizu/Desktop'

# デフォルトエディタ(visudoとかで使われる)
export EDITOR=vim



