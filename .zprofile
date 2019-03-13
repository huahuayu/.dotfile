# add go path
export GOPATH=/Users/shiming/Nutstore/5-goland
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$GOROOT/bin/:$PATH

# add python3.7 to path
export PATH=/usr/local/Cellar/python/3.7.1/bin:$PATH
export PATH=/usr/local/Cellar/python/3.7/bin:$PATH
alias pip3='python3 -m pip'
alias python2="/usr/bin/python" 

# alias cleos in docker
alias cleos='docker exec -it eosio /opt/eosio/bin/cleos --url http://127.0.0.1:7777 --wallet-url http://127.0.0.1:5555'

# alias md_to_json
alias mtj='md_to_json'

# alias for clear 
alias cl='clear'

# alias for tldr
alias sman='tldr'

# ln vi/vim
ln -sf /usr/local/Cellar/vim/8.1.0600_1/bin/vim /usr/local/bin/vim
ln -sf /usr/local/Cellar/vim/8.1.0600_1/bin/vim /usr/local/bin/vi

#grafana(montier service)
export PATH=/usr/local/Cellar/grafana/5.4.3/bin:$PATH

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
