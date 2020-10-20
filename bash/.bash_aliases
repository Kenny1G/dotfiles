#ssh
alias freebies='ssh root@192.168.169.128'
alias wesuck='ssh root@192.168.169.131'
alias toughie='ssh root@192.168.90.129'
alias biggie='ssh setup@192.168.90.35'
alias hless='ssh -X kennyosele@toshiba-toaster.duckdns.org'



#running stuff
alias gccc='gcc -Wall -pedantic -Wextra -g'
alias g+++='g++ -Wall -pedantic -Wextra -g'


#going to workspace directory

##From home
alias gang='home && cd ganggang'
alias sss='home && cd HYO/SpotifySucks'
alias hw='home && cd HYO/hollowic/music-player/src'
alias hb='home && cd HYO/hollowic/music-player-backend'

## From work
alias work='home && cd CESI'
alias minion='work && cd cesi_sg_companion/head/bsd_build/'
alias pcaps='work && cd pcap_query_server/head/bsd_build'
alias sg='work && cd ServicesGui/head'
alias sc='work && cd services-cli/'
alias shared='work && cd Shared/head/'
alias spcap='work && cd SharedPcap/head'
alias cscan='work && cd CesiscanExe/head'
alias ta='work && cd talonAgent/head'
alias rh='work && cd Research'


alias cesg='cd /mnt/c/ProgramData/CyberESI/CesiSG/'


alias cr='sockstat | grep 133'


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
alias edal='vim ~/.bash_aliases'
alias upbash='source ~/.bash_aliases'


#git
alias g='git'
alias st='git status'
alias com='git commit -m'
alias clone='git clone'
alias sth='git stash'
alias lg='git log'
alias u='git add -u'
alias all='git add -A'
alias gcout='git checkout'
alias mer='git merge --no-ff'


export DISPLAY=10.28.173.61:1.0

#System Specifics
case "$ITISI" in 
   TOASTER)
      alias home='cd ~'
      ;;
   FREEBIE)
      #directories
      alias home='cd ~'
      alias rmn='minion && cd bin && ./companion -i companion.cfg &'
      alias rsc='sc && cd bsd_build/obj && ./talonCLI.full -i hub.cfg'
      alias csc='sc && make'
      alias rps='pcaps && cd bin && ./pcap_query_server -i pcap_query_server.cfg &'
      alias mnt='kldload fuse.ko && vmhgfs-fuse .host:/CESI CESI'
      alias pcaps='work && cd pcap_query_server/bsd_build'
      alias sg='work && cd ServicesGui/'
      alias shared='work && cd Shared/'
      alias spcap='work && cd SharedPcap/'
      alias cscan='work && cd CesiscanExe/'
      alias ta='work && cd talonAgent/'
      alias minion='work && cd cesi_sg_companion/bsd_build/'
      alias dqs='rh && cd dummy_query_server/usr.bin/dqs'
      alias clnt='work && cd bhn_orchestrator/lib/liborchestrator_module_pcap_query_client'
      alias orc='work && cd bhn_orchestrator/usr.sbin/bhnorchestrator'
		alias pub='rh && cd zmqpub/usr.bin/zmqpub && obj/zmqpub.full sample.json'

      #running stuff
      alias ccc='cc -I/usr/local/include -L/usr/local/lib -Wall -pedantic -Wextra -g -lzmq' 
      alias c+++='c++ -Wall -pedantic -Wextra -g'
      ;;
   WSL)
      alias home='cd /mnt/c/Code'
      alias csg='cd /mnt/c/ProgramData/CyberESI/CesiSG/'
      alias file='explorer.exe .'
      alias drop_cache="sudo sh -c \"echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'\""
      alias stan="cd \"/mnt/c/Users/osele/OneDrive - Stanford/Stanny\""
      ;;
esac
