# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1='\[\e[0m\][\[\e[32m\]\u@\[\e[34m\]\h \W\[\e[0m\]]\$ '


# User specific aliases and functions
alias ls='ls -F --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias vi='vim'
