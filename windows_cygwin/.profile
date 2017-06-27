#bashだけを使うならば.profileに書いちゃって大丈夫
#.profileの中に、.bashrcを呼び出す設定を書けば.bashrcも読み込んでくれる
#今現在は、bashしか使っていないので、.profileにすべて書いておく

#minttyをUTF-8設定するとwindowsコマンドが文字化けすることの解決
#出力をUTF-8に変換するラッパーを通す
function wincmd() {
	CMD=$1
	shift
	$CMD $* 2>&1 | iconv -f cp932 -t utf-8
}

#管理者権限(cygstartコマンド)を使ったsudo(っぽい)コマンドの定義
if [[ -n "$PS1" ]]; then
	__sudo_cygwin() {
		local executable=$(which "${1:-cmd}")
		shift
		/usr/bin/cygstart --action=runas "$executable" "$@"
	}

	if [[ -x "/usr/bin/cygstart" ]]; then
		alias sudo='__sudo_cygwin'
	fi
fi

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'

alias ipconfig='wincmd ipconfig'
alias ifconfig='ipconfig'
alias netstat='wincmd netsh'
alias cscript='wincmd cscript'
#pingがpermissionエラーになることを防ぐ(/cと/cygdrive/cの互換設定必須)
#cドライブの設定は特にしていないので、cygdrive経由
alias ping='wincmd /cygdrive/c/Windows/system32/PING.EXE'
alias nslookup='wincmd nslookup'
alias java='wincmd java'
alias traceroute='wincmd tracert'

#1つ上のディレクトリへの移動がめんどくさい
alias cdu='cd .. && ls -l'

#デスクトップへの移動がめんどくさい
alias desktop='cd ~/desktop && ls -l'
alias dt='desktop'

#awsの自動補完機能
complete -C aws_completer aws

#awsのユーザ切り替え便利機能(http://d.hatena.ne.jp/j3tm0t0/20130101/1357054265)
. ~/.aws/env
[ "$EC2_REGION" = "" ] && region ap-northeast-1
[ "$AWS_KEY_DIR" = "" ] && key myop

#以下を/etc/bash.bashrcに追記
#PS1='\[\e[32m\]ホスト名 \[\e[34m\]\w\[\e[0m\] \$ '

#カウントダウンとストップウォッチ
function countdown(){
   date1=$((`date +%s` + $1)); 
   while [ "$date1" -ge `date +%s` ]; do 
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
   cygstart ~/desktop/個人/bgm/ff5_1_08_fanfare.mp3
}
function stopwatch(){
  date1=`date +%s`; 
   while true; do 
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; 
    sleep 0.1
   done
}

