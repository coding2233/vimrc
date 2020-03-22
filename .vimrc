" 设置编码
set encoding=utf-8
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" vim 状态栏 airline 以及airline主题
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vim 文字主题
Plug 'morhetz/gruvbox'

" 搜索
" 模糊搜索
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
" 工程搜索
Plug 'dyng/ctrlsf.vim'

" 目录树
Plug 'scrooloose/nerdtree'

" tagbar
Plug 'majutsushi/tagbar'

" 自动补全的插件
Plug 'ycm-core/YouCompleteMe'
" Syntax checking hacks for vim 
Plug 'vim-syntastic/syntastic'
" C++11/C++14 STL 语法高亮
Plug 'octol/vim-cpp-enhanced-highlight'

" .h/.cpp 快速切换
Plug 'derekwyatt/vim-fswitch'

" 注释
Plug 'scrooloose/nerdcommenter'

" 对齐虚线
Plug 'Yggdroot/indentLine'


" Initialize plugin system
call plug#end()

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 设置退格可使用
set backspace=2

" 去掉有关vi一致性模式，避免以前版本的bug和局限
set nocompatible  

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 设置自动缩进
set ai!

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

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

" 开启语法高亮功能
syntax enable

" 允许用指定语法高亮配色方案替换默认方案
syntax on 

" 定义快捷键的前缀，即<Leader>
" let mapleader=";"

" *.cpp 和 *.h 间切换
nmap <Leader>sc :FSHere<CR>

" 工程内关键词搜索
nnoremap <Leader>sa :CtrlSF  

" 模糊搜素fzf
" 搜索文件
nmap <leader>sf :Files<CR>
" buffer文件切换
nmap <leader>sbc :Buffers<CR>
" 加载的所有buffer里查找
nmap <leader>sba :Lines<CR>
" 在当前buffer里查找包含某关键词的行
nmap <leader>sb :BLines<CR>
" 以Tag查找 (ctags -R)
nmap <leader>sta :Tags<CR>
" 在当前buffer里查找包含某关键词的行
nmap <leader>st :BTags<CR>
" Windows
nmap <leader>sw :Windows<CR>
" Marks
nmap <leader>sm :Marks<CR>
" v:oldfiles and open buffers 命令历史查找
nmap <leader>sh :History<CR>
" Normal mode mappings : map key
nmap <leader>smk :Maps<CR>
" Commands
nmap <leader>scm :Commands<CR>


" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：toggle tree
nmap <Leader>tt :NERDTreeToggle<CR>
" 设置显示／隐藏标签列表子窗口的快捷键。速记：toggle bar
nnoremap <Leader>tb :TagbarToggle<CR>

" youcompleteme
" 设置ycm的配置文件
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
" 关闭clangd
let g:ycm_use_clangd = 0
" Go to include/declaration/definition
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Automatically fix certain errors 修复
nnoremap <leader>yfi :YcmCompleter FixIt<CR>
"  Reference finding 引用
nnoremap <leader>yr :YcmCompleter GoToReferences<CR>
" Renaming symbols 重命名
" nnoremap <leader>yrn :YcmCompleter RefactorRename
" Code formatting
nnoremap <leader>yf :YcmCompleter Format<CR>
" Type information for identifiers
nnoremap <leader>yt :YcmCompleter GetType<CR>
" View documentation comments for identifiers
nnoremap <leader>yd :YcmCompleter GetDoc<CR>
