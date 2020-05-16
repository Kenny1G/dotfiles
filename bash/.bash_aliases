#ssh
alias freebies='ssh root@192.168.169.128'


#this system

#running stuff
alias rmn='minion && cd bin && ./companion -i companion.cfg &'
alias rps=' pcaps && cd bin && ./pcap_query_server -i pcap_query_server.cfg &'

alias gccc='gcc -Wall -pedantic -Wextra -g'
alias g+++='g++ -Wall -pedantic -Wextra -g'

#going to workspace directory
alias minion='work && cd cesi_sg_companion/head/bsd_build/'
alias pcaps='work && cd pcap_query_server/head/bsd_build'
alias sg='work && cd ServicesGui/head'
alias shared='work && cd Shared/head/'
alias file='explorer.exe .'


alias checkrun='sockstat | grep 133'
alias mnt='kldload fuse.ko && vmhgfs-fuse .host:/CESI CESI'

#ssh

#basic commands
alias q='exit'
alias c='clear'
alias h='history'
alias cs='clear;ls'
alias p='cat'
alias pd='pwd'
alias lsa='ls -a'
alias lsl='ls -l'
alias pd='pwd'
alias t='time'
alias k='kill -9'
alias n='nvim'
alias edal='code ~/.bash_aliases'
alias upbash='source ~/.bashrc'

#git
alias g='git'
alias st='git status'
alias com='git commit -m'
alias clone='git clone'
alias sth='git stash'
alias lg='git log'
alias u='git add -u'
alias all='git add .'

#
#this box only
alias home='cd /mnt/c/Code'
alias work='cd /mnt/c/Code/CESI'
