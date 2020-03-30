### 使用
```shell
# 切换到 home 目录
cd ~
git clone https://github.com/huahuayu/.dotfile.git
```

### zsh 安装
安装 zsh  
`https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH`  
macOS
```shell
brew install zsh zsh-completions
```

安装 oh-my-zsh  
``` bash
sh ~/.dotfile/ohmyzsh_install.sh
```

附：安装脚本来源（需科学上网访问）  
```
https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
```


初始化配置  
```shell
ln -sf ~/.dotfile/.zshrc ~/  
ln -sf ~/.dotfile/.zprofile ~/.zprofile  
ln -sf ~/.dotfile/shiming.zsh-theme ~/.oh-my-zsh/themes/
ln -sf ~/.dotfile/.tmux.conf ~/
ln -sf ~/.dotfile/.vimrc ~/
```

### spacevim 安装
安装  
`curl -sLf https://spacevim.org/install.sh | bash`  
初始化配置  
`ln -sf ~/.dotfile/.SpaceVim.d ~/.SpaceVim.d` 

### git config
```shell
ln -sf ~/.dotfile/.gitconfig ~/.gitconfig
```

