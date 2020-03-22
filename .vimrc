set encoding=utf-8

" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" vim 状态栏 airline 以及airline主题
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vim 文字主题
Plug 'morhetz/gruvbox'


" Initialize plugin system

call plug#end()



" 设置退格可使用

set backspace=2



" 去掉有关vi一致性模式，避免以前版本的bug和局限

set nocompatible  



" 检测文件类型

filetype on



" 设置tab键为4个空格

set tabstop=4



" 设置自动缩进

set ai!



" 设置行号

set number

" 设置相对行号

" set relativenumber

" 取消相对行号

"set norelativenumber



" 设置颜色

set termguicolors



" airline的主题

let g:airline_theme='luna'



" 使用powerline改过后的字体

let g:airline_powerline_fonts = 1



" 使用主题

colorscheme gruvbox



" gruv背景使用drak

set background=dark


