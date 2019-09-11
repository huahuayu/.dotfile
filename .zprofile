case `uname` in
  Darwin)
	# list process & ports
	listen() {
	    if [ $# -eq 0 ]; then
		lsof -iTCP -sTCP:LISTEN -n -P
	    elif [ $# -eq 1 ]; then
		lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $1
	    else
		echo "Usage: listen [pattern]"
	    fi
	}

	# fabric commands
	export PATH=~/fabric-samples/bin:$PATH

	# alias for go to defang dir
	alias defang='cd ~/Nutstore/21-defang'	

	# alias for go to jianguoyun dir
	alias jianguoyun='cd ~/Nutstore'	

	# alias for go to myrepo dir
	alias myrepo='cd ~/Nutstore/00-myrepo'	

	# alias for go to gosrc dir
	alias gosrc='cd $GOPATH/src'	

	# alias for go to java src dir
	alias javasrc='cd ~/Nutstore/0-IdeaProjects'

	# add go path
	export GOPATH=~/Nutstore/5-goland
	export GOBIN=$GOPATH/bin
	export PATH=$GOBIN:$GOROOT/bin/:$PATH

	# add mysql to path
	export PATH=/usr/local/mysql/bin:$PATH

	# add python3.7 to path
	export PATH=/usr/local/Cellar/python/3.7.1/bin:$PATH
	export PATH=/usr/local/Cellar/python/3.7/bin:$PATH
	alias pip3='python3 -m pip'
	alias python2="/usr/bin/python" 

	# alias cleos in docker
	alias cleos='docker exec -it eosio /opt/eosio/bin/cleos --url http://127.0.0.1:7777 --wallet-url http://127.0.0.1:5555'


	# alias for clear 
	alias cl='clear'

	# alias for tldr, simplfied man command
	alias sman='tldr'

	# alias for locate updatedb
	alias updatedb='sudo /usr/libexec/locate.updatedb'

	# ln vi/vim
	ln -sf /usr/local/Cellar/vim/8.1.0600_1/bin/vim /usr/local/bin/vim
	ln -sf /usr/local/Cellar/vim/8.1.0600_1/bin/vim /usr/local/bin/vi

	#grafana(montier service)
	export PATH=/usr/local/Cellar/grafana/5.4.3/bin:$PATH

	# nvm
	export NVM_DIR="$HOME/.nvm"
	[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
	[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion


	# java env var
	export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_212.jdk/Contents/Home
	export JRE_HOME=${JAVA_HOME}/jre  
	export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib  
	export PATH=${JAVA_HOME}/bin:$PATH

  ;;
  Linux)
    # commands for Linux go here
  ;;
  FreeBSD)
    # commands for FreeBSD go here
  ;;
esac
