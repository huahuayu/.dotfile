# 新用户默认使用ohmyzsh
## 新建用户默认使用zsh
如果使用`adduser`命令新增用户，该命令的配置文件是`/etc/adduser.conf`，修改该文件将默认
``` bash
DSHELL=/bin/sh
```
修改为
``` bash
DSHELL=/bin/zsh
```

如果使用`useradd`添加用户则修改`/etc/default/useradd`
```
SHELL=/bin/sh
```
改为
```
SHELL=/bin/zsh
```

## 克隆dotfile
``` shell
cd /usr/share
git clone https://github.com/huahuayu/.dotfile.git
```

切换分支
``` shell
git checkout linux
```

## 为新用户默认配置文件
``` shell
ln -sf /usr/share/.dotfile/.zshrc /etc/skel
ln -sf /usr/share/.dotfile/.zprofile /etc/skel
ln -sf /usr/share/.dotfile/.tmux.conf /etc/skel
ln -sf /usr/share/.dotfile/.vimrc /etc/skel 
ln -sf /usr/share/.dotfile/shiming.zsh-theme /etc/skel/.oh-my-zsh/themes/
```

## 为当前用户初始化配置
``` shell
ln -sf /etc/skel/.dotfile/.zshrc ~/ 
ln -sf /etc/skel/.dotfile/.zprofile ~/
ln -sf /etc/skel/.dotfile/.tmux.conf ~/
ln -sf /etc/skel/.dotfile/.vimrc ~/
ln -sf /etc/skel/.dotfile/shiming.zsh-theme ~/.oh-my-zsh/themes/
```



