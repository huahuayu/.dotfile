# add go path
export GOPATH=/Users/shiming/Nutstore/5-goland
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$GOROOT/bin/:$PATH

# add python3.7 to path
export PATH=/usr/local/Cellar/python/3.7.0:$PATH
alias python=python3.7

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
