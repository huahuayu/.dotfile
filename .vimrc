" 自动语法高亮
syntax on

" 支持使用鼠标
if has('mouse')
  set mouse=a
endif


" 启用256色
set t_Co=256

" 根据文件类型缩进
filetype plugin indent on

" 用4个空格展示已存在的tab键
set tabstop=4
" 使用'>'缩进时, 按4个空格缩进 
set shiftwidth=4
" 按tab键时缩进4个空格
set expandtab

" js文件用两个字符缩进
augroup FileTypeSpecificAutocommands
    autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

" 回车后下一行和上一行保持相同缩进
set autoindent

" 搜索高亮显示
set hlsearch

" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch

" 保证delete键能删东西 
set backspace=indent,eol,start

" 让vim使用系统剪贴板（mac下unnamed和unnamedplus都是指向系统剪贴板，linux下unnamed和unnamedplus略有不同），兼容mac和linux
set clipboard^=unnamed,unnamedplus

" 防止中文乱码
set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set termencoding=utf-8
set encoding=utf-8

" 默认相对行号
set relativenumber

" 普通模式和插入模式光标形状(For iTerm2 on OS X) refer: https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" 普通模式和插入模式光标形状(For tmux running in iTerm2 on OS X)
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
endif

" vim diff颜色优化
if &diff
   syntax off
   colorscheme evening
endif

" vim-plug插件配置
call plug#begin('~/.vim/plugged')
    Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
    Plug 'tomlion/vim-solidity'
    Plug 'preservim/nerdcommenter'
call plug#end()

" 不同操作系统配置
if system('uname -s') == "Darwin\n"
  "OSX
  set clipboard=unnamed
else
  "Linux
endif
