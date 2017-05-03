
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 基本配置：
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number	"配置行号
set nocompatible	"不与VI兼容
syntax on	" 打开语法高亮，自动识别代码，使用多种颜色显示
"set showmode	" 在底部显示，当前处于命令模式，还是插入模式

" 命令模式下，在底部显示当前键入的命令
" set showcmd

" 文件类型检查，载入与该类型对应的缩进规则
 filetype on
" 检测文件类型插件
filetype plugin on



" 缩进:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent	" 按下回车，下一行缩进和上一行保持一致

set tabstop=4	" 设置tab长度为4

set shiftwidth=4	" 按下 > 增加一级缩进，< 取消一级缩进，== 取消所有缩进

" set expandtab	" tab在不同的编辑器中缩进不一致时，自动将tab转为空格
" set softtabstop=2	" tab转为多个空格
" set tabstop=2 " 按下tab的时候vim显示空格数, 即tab为空格


" 外观:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cursorline	" 光标所在的当前行高亮

" set textwidth=80	" 设置行宽，即一行显示多少个字符
set wrap	" 设置自动折行，太长的行，分几行显示
set linebreak " 只有遇到指定符号（如空格连词符号）才发生折行，也就是说不会在单词内部折行
set wrapmargin=2	"在折行处，与边缘空出字符

set scrolloff=5		" 垂直滚动时，光标距离顶部/底部的位置（行）

set laststatus=2	" 是否显示状态栏，0表示不显示，1只在多窗口时显示，2表示显示
set ruler	" 在状态栏显示光标当前的位置（行列）


" 搜索:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch	" 光标遇到圆括号大括号时，自动高亮对应的另一个括号

set hlsearch	" 搜索时高亮显示匹配结果
set incsearch	" 输入搜索时，没输入一个字符，就调到第一个匹配的结果处
" set ignorecase	" 搜索时忽略大小写
set smartcase	"如果同时打开了ignorecase，将对只有一个大写字母的搜索词敏感，其他不敏感。如搜索Test，讲不匹配test,搜索test，可以匹配Test


" 编辑:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set spell spelllang=en_us	" 打开英语单词拼写检查

" set nobackup	" 不创建备份文件，默认保存时会创建～结尾的备份文件
" set noswapfile	"不创建交换文件。交换文件用于系统崩溃时回复文件

" set undofile	"保留撤销历史。意味着重新打开文件时，可以撤销上一次编辑的操作，撤销文件以.un~开头

" set backupdir=~/.vim/.backup//
" set directory=~/.vim/.swp//
" set undodir=~/.vim/.undo//

" set autochdir	" 自动切换工作目录
" set noerrorbells	" 出错时不要发出声响
" set visualbell	" 出错时发出视觉提示，通常是屏幕闪烁

set history=100	" vim 需要记住多少次历史操作
set autoread	"打开文件监视，如果在编辑过程中文件发生外部改变，就会发出提示



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 显示function列表
" taglist:
" 	下载地址：https://www.vim.org/scripts/script.php?script_id=273
" 	下载到~/.vim/下，直接进行解压，会出现doc和plugin文件夹
" ctags:
" 	sudo apt-get install ctags
" 	运行ctags -R
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd='/usr/bin/ctags'	"告知系统生成tag的程序位置
let Tlist_Show_One_File=1	"不同时显示多个文件tag
let Tlist_Exit_OnlyWindow=1	"如果taglist是最后一个窗口，则退出VIM
let Tlist_Use_Left_Window=1	"在窗口左侧显示taglist窗口
let Tlist_Auto_Open=1	"默认自动打开Tlist

