# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#awsの自動補完機能
complete -C aws_completer aws

#awsのユーザ切り替え便利機能(http://d.hatena.ne.jp/j3tm0t0/20130101/1357054265)
#参考 https://github.com/j3tm0t0/awsenv.git
. ~/.aws/env
[ "$EC2_REGION" = "" ] && region ap-northeast-1
[ "$AWS_KEY_DIR" = "" ] && key myop

