### 使用
```shell
# 切换到 home 目录
cd ~
git clone git@github.com:Laily123/.dotfile.git
```

### zsh 安装
安装 zsh  
`https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH`  
macOS
```shell
brew install zsh zsh-completions
```

安装 oh-my-zsh  
```shell
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```
初始化配置  
```shell
ln -sf ~/.dotfile/.zshrc ~/  
ln -sf ~/.dotfile/laily.zsh-theme ~/.oh-my-zsh/themes/
ln -sf ~/.dotfile/.tmux.conf ~/
```

### spacevim 安装
安装  
`curl -sLf https://spacevim.org/install.sh | bash`  
初始化配置  
`ln -sf ~/.dotfile/.SpaceVim.d ~/` 

### git config
```shell
ln -sf ~/.dotfile/.gitconfig ~/.gitconfig
```

