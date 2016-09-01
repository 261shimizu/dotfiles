# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1='\[\e[0m\][\[\e[32m\]\u@\[\e[34m\]\h \W\[\e[35m\]$(__git_ps1 " (%s)")\e[0m\]]\$ '


# User specific aliases and functions
alias ls='ls -F --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias vi='vim'

# gitのプロンプト表示のシェル
source /usr/share/doc/git-2.8.3/contrib/completion/git-prompt.sh 
