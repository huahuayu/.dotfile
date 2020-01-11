" 自动语法高亮
syntax on
" 支持使用鼠标
set mouse=a
" 启用256色
set t_Co=256
" 开启文件类型检查，并且载入与该类型对应的缩进规则
filetype indent on
" 回车后下一行和上一行保持相同缩进
set autoindent
" 搜索高亮显示
set hlsearch
" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch
" 保证delete键能删东西 
set backspace=indent,eol,start
" vim-go 插件
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()

set clipboard=unnamed

" 防止中文乱码
set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set termencoding=utf-8
set encoding=utf-8

" 相对行号
set relativenumber

" 普通模式和插入模式光标形状
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
" vim diff颜色
if &diff
   syntax off
   colorscheme evening
endif
