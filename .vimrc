"显示行号
set nu
"tab替换为空格数
set tabstop=4

set softtabstop=4
"缩进空格
set shiftwidth=4
"空格代替缩进
set expandtab
"自动缩进
set autoindent
set cindent

"新标签页
map <C-t> :tabnew<cr>
"前一个标签页
map <C-p> :tabprevious<cr>
"后一个标签页
map <C-n> :tabnext<cr>

"显示tab、行尾空格
set list

"设置tab显示为">----" 行尾空白显示为"-"
set listchars=tab:>-,trail:-
"文件编码
set encoding=utf-8

"语法高亮
syntax on
syntax enable
"高亮光标行
set cursorline
"自动检测文件类型并加载相应设置
filetype plugin indent on
set completeopt=longest,menu "关掉智能补全时的预览窗口

"设置配色方案
colorscheme evening 

"高亮显示匹配的括号
set showmatch

"去掉vi一致性
set nocompatible

"设置当文件被外部改变的时侯自动读入文件
if exists("&autoread")
    set autoread
endif

"设置增量搜索模式
set incsearch


"开关tag窗口
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <F7> :NERDTreeToggle <CR>

nmap <unique> <silent> <leader>lk <Plug>LookupFile
imap <unique> <expr> <silent> <leader>lk (pumvisible()?”\<C-E>”:”").”\<Esc>\<Plug>LookupFile”


" 我的状态行显示的内容（包括文件类型和解码） 
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}

set laststatus=2

set ruler
let g:SuperTabDefaultCompletionType="context"

"高亮search命中的文本。
set hlsearch


let g:miniBufExplMapWindowNavVim = 0 
let g:miniBufExplMapWindowNavArrows = 0 
let g:miniBufExplMapCTabSwitchBufs = 0 
let g:miniBufExplModSelTarget = 0

"设置vim根据编辑的文件自动切换工作目录
set autochdir

map <C-f> :CtrlP<cr>
