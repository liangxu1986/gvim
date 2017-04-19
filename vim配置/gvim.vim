set nocompatible
set number
set cursorline
set cursorcolumn
set autoindent
set tabstop=4
set shiftwidth=4
set ruler
set hlsearch
set nowrap
set nobackup
set expandtab
set tabstop=4
set autoindent shiftwidth=4
syntax on
filetype on

colorscheme torte
set guifont=Courier\ Bold\ 13
set guifont=Monospace\ 11
set guioptions+=b

let g:SuperTabRetainCompletionType = 2
let g:SuperTabDefaultCompletionType = "<C-N><C-P>"

""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 0            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 
let Tlist_Show_Menu = 1                "display the tag list
"let Tlist_Auto_Open = 1                "open the taglist automatically
"map <silent> <F9> :TlistToggle<cr>
"map <silent> <F9> :TlistOpen<cr>
"map <silent> <F10> :TlistClose<cr>
"map <F8>:!ctags -R *
set tags=tags;
set autochdir 

"Set mapleader
let mapleader = ","

map <silent> <leader>g :gvim ./<cr>
map <silent> <leader>to :TlistOpen<cr>
map <silent> <leader>tc :TlistClose<cr>
nnoremap <silent> <F8> :TlistToggle<CR>
map <silent> <leader>t :TlistToggle<cr>

"set customer match pairs
let b:match_ignorecase = 0
set matchpairs+=<:>
let b:match_words = &matchpairs.',\<begin\>:\<end\>'
                    \. ',\<ifdef\>:\<endif\>,\<ifndef\>:\<endif\>'
                    \. ',\<class\>:\<endclass\>,\<task\>:\<endtask\>,\<function\>:\<endfunction\>'
                    \. ',\<module\>:\<endmodule\>'
                    \. ',\<program\>:\<endprogram\>'
                    \. ',\<case\>:\<endcase\>'
                    \. ',\<fork\>:\<join_none\>:\<join_any\>:\<join\>'
                    \. ',\<generate\>:\<endgenerate\>'


"开关tag窗口
nnoremap <silent> <F8> :TlistToggle<CR>

"使用右侧tag窗口
"let Tlist_Use_Right_Window=1

"一般设置.
"set nocompatible "VIM而不是VI
set history=50 "历史记录50条
set fenc=utf-8 "设置默认语言为8位unicode
"man Q gq "屏蔽Q, 以免进入Ex模式
filetype on "打开文件类型检测

"
""颜色设置.
colorscheme delek "主题
"colorscheme evening "主题
syntax on "语法高亮
"set hls " 查找文本高亮

"界面设置.
set ruler "显示当前位置
set number "显示行号
""set nonumber "不显示行号

"格式设置.
set autoindent "自动缩进
set smartindent "智能缩进
set cindent "C缩进
set tabstop=4 "硬TAB
set softtabstop=4 "软TAB
set shiftwidth=4 "缩进空格数
set expandtab "空格替换TAB
"set smarttab "智能TAB
"
set showmatch "显示匹配
"set matchtime=5 "1/10秒延迟
"set hlsearch "高亮搜索
"set incsearch "搜索中匹配
set tags=tags; "ctags
set autochdir "ctags
