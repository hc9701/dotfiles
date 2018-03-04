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
    "设置包括vundle和初始化相关的runtime path
   " if filereadable(expand("~/.vimrc.bundles"))
   "  source ~/.vimrc.bundles
   " endif
    filetype plugin indent on
