let mapleader=";"
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %

set textwidth=80
set wrap


set nobackup
set noswapfile
set encoding=utf-8
set number
set ruler
set cindent
set tabstop=4
set shiftwidth=4
" 高亮显示当前行/列
set cursorline
set cursorcolumn
set ic
set hls
set is
set ignorecase
set showmode
set nofoldenable
syntax enable
set background=dark
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
set fileencoding=UTF-8
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 总是显示状态栏
set laststatus=2

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

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



call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Raimondi/delimitMate'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'Shougo/deoplete.nvim'
endif
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'suan/vim-instant-markdown'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kshenoy/vim-signature'

call plug#end()


autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle <CR>
let NERDTreeShowHidden=1
let g:NERDTreeShowIgnoredStatus = 1
let g:nerdtree_tabs_open_on_console_startup=0
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }



" o 打开关闭文件或目录
" e 以文件管理的方式打开选中的目录
" t 在标签页中打开
" T 在标签页中打开，但光标仍然留在 NERDTree
" r 刷新光标所在的目录
" R 刷新当前根路径
" X 收起所有目录
" p 小写，跳转到光标所在的上一级路径
" P 大写，跳转到当前根路径
" J 到第一个节点
" K 到最后一个节点
" I 显示隐藏文件
" m 显示文件操作菜单
" C 将根路径设置为光标所在的目录
" u 设置上级目录为根路径
" ctrl + w + w 光标自动在左右侧窗口切换
" ctrl + w + r 移动当前窗口的布局位置
" :tabc 关闭当前的 tab
" :tabo   关闭所有其他的 tab
" :tabp   前一个 tab
" :tabn   后一个 tab
" gT      前一个 tab
" gt      后一个 tab


set background=dark
colorscheme solarized

" Use deoplete.
let g:deoplete#enable_at_startup = 1


let g:ale_linters = {
\    'javascript': ['eslint'],
\    'css': ['stylelint'],
\}
let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'css': ['stylelint'],
\}
let g:ale_fix_on_save = 1
 
let g:ale_sign_column_always = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '▶'
 
let g:Powerline_colorscheme='solarized256'
let g:airline_theme='papercolor'
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
