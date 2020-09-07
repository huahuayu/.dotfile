case `uname` in
  Darwin)
    export PATH=/Library/Developer/CommandLineTools/usr/bin:$PATH
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
	export PATH=/Users/shiming/hyperledger/fabric-samples/bin:$PATH

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

	# alias for defang project
	alias defang='cd ~/Nutstore/21-defang'

    # alias for postgre
    alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
    alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

	# add go path
	export GOPATH=~/Nutstore/5-goland
	export GOBIN=$GOPATH/bin
	export PATH=$GOBIN:$GOROOT/bin/:$PATH

    # goproxy
    export GO111MODULE=off
    export GOPROXY=https://goproxy.cn

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
	#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_212.jdk/Contents/Home
	#export JRE_HOME=${JAVA_HOME}/jre  
	#export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib  
	#export PATH=${JAVA_HOME}/bin:$PATH

	export PATH=/usr/local/sbin:$PATH

	# inetutils(ftp tools etc)
	export PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"

    # iterm2 shell integration  
    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

    # fabirc sample bin
    export PATH=/Users/shiming/fabric/fabric-samples/bin:$PATH

    # fabric sample config
    export FABRIC_CFG_PATH=/Users/shiming/fabric/fabric-samples/config

    # jenv
    export PATH="$HOME/.jenv/bin:$PATH"
    eval "$(jenv init -)"

    export PATH=/usr/local/bin:$PATH
  ;;
  Linux)
	# git log encoding problem
	export LESSCHARSET=utf-8
  ;;
  FreeBSD)
    # commands for FreeBSD go here
  ;;
esac
