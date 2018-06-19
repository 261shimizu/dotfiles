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
alias grep='grep --color'
alias ps='ps --sort=start_time'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'


# デフォルトエディタ(visudoとかで使われる)
export EDITOR=vim



# gitのプロンプト表示のシェル
source /usr/share/doc/git-1.8.3.1/contrib/completion/git-prompt.sh
