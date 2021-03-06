#use in bashrc  . $dotfiles-path/.bashrc

shopt -s no_empty_cmd_completion

alias vim-sjis='vim -c ":e ++enc=cp932"' #ichiji shinogini.
alias git-ssl-no-verify='export GIT_SSL_NO_VERIFY=true'

function dump_syslog() { tcpdump -s0 $1 $2 -f -v  port 514 -p   | awk '$14 ~ /UDP/{printf strftime("%Y%m%d")" " $1}/syslog: SYSLOG, length/{printf " " $1}$1 ~ /Msg/{print " "$0}'  | sed -e 's/\s\+/ /g'  -e 's/\.syslog Msg://g'; }

function my-shell-snippets (){
	echo "find -name *.c -print0 | xargs -0 egrep option.. pattern"
}

#go path from http://blog.wacul.co.jp/blog/2014/08/22/go/
export GOPATH=$HOME/go/third-party:$HOME/go/my-project
export PATH=$HOME/go/third-party/bin:$HOME/go/my-project/bin:$PATH 

alias gs='(cd ~/cur/training/1st-season; sh cur.sh)'
