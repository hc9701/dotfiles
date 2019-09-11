"generel
    "relative line number
    set rnu
    "color 256
    set t_Co=256
    syntax on
    colorscheme solarized
    set bg=dark
    "浅色显示当前行
    autocmd InsertLeave * set nocul
    "用浅色高亮当前行
    autocmd InsertEnter * set cul
    "file encodings
    set encoding=utf-8
    set fileencodings=utf-8,gb2312,gb18030,gb13000,gbk,ucs-bom,cp936,latin1 " 如果你要打开的文件编码不在此列，那就添加进去
    set termencoding=utf-8

"indent
    "auto indent
    set ai
    "smart indent
    set si
    "cursor line
    set cul
    "shift << >> width
    set sw=4
    "tabstop
    set ts=4
    "expand tab
    set et

"plugin
    filetype off
   " if filereadable(expand("~/.vimrc.bundles"))
   "  source ~/.vimrc.bundles
   " endif
    filetype plugin indent on
