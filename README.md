# vimrc
vim配置文件

### 模糊搜索
* 先安装`fzf` `pacman -S fzf`
* vim插件:`/usr/bin/fzf `  `junegunn/fzf.vim`

### 工程全局搜索
* [https://github.com/dyng/ctrlsf.vim](https://github.com/dyng/ctrlsf.vim)
* 安装ack `pacman -S ack`
* vim插件 `dyng/ctrlsf.vim`


### YouCompleteMe
* 安装`./install.py ---clang-completer`
* 复制`.ycm_extra_conf.py`到一个固定目录
* 修改`.vimrc`的`let g:ycm_gobal_ycm_extra_conf`的路径


### 快捷键
|按键|说明|
|----|----|
|Ctrl+O|光标后退|
|Ctrl+I|光标前进|
|<leader>cc|注释|
|<leadercu>|取消注释|
