" not compatible to vi
set nocompatible

" display line number
set number

" highlight current line and column
set cursorline
set cursorcolumn

set autoindent
set ruler

" do not wrap the line
set nowrap

" no backup file
set nobackup

" use four spaces as a tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" highlignt search
set incsearch
set hlsearch
set showmatch

colorscheme torte
"set guifont=Courier\ Bold\ 13
set guifont=Monospace\ 11
set guioptions+=b
let g:molokai_original = 0
let g:rehash256 = 1
colorscheme molokai
"highlight NonText guibg=#060606
"highlight Folded  guibg=#0A0A0A guifg=#9090D0

" enable syntax
syntax on
filetype on

" file-type plugin
filetype plugin on

" Set syntax highlighting for specific file types
"autocmd BufRead,BufNewFile Appraisals set filetype=ruby
autocmd BufRead,BufNewFile *.sv set filetype=systemverilog
"autocmd Syntax javascript set syntax=jquery


"show invisible characters with the same characters that TextMate uses
set list
set listchars=tab:▸\ ,eol:¬

" turn off the bell
set visualbell t_vb=  "关闭visual bell
au GuiEnter * set t_vb= "关闭beep

"Set mapleader
let mapleader = ","


" ,<space> for :noh
nnoremap <silent> <leader><space> :noh<cr>

" <tab> for %
nnoremap <tab> %
vnoremap <tab> %

" <F5> to turn on the NERDTree
nnoremap <silent> <F5> :NERDTree<CR>


" super tab plugin
let g:SuperTabRetainCompletionType  = 2
let g:SuperTabDefaultCompletionType = "<C-N><C-P>"

""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 0            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 
let Tlist_Show_Menu = 1                "display the tag list
let Tlist_Auto_Open = 1                "open the taglist automatically
map <silent> <F10> :TlistClose<cr>
"map <F8>:!ctags -R *
set tags=tags;
set autochdir 
"map <silent> <leader>to :TlistOpen<cr>
"map <silent> <leader>tc :TlistClose<cr>
nnoremap <silent> <F8> :TlistToggle<CR>



map <silent> <leader>g :gvim ./<cr>
"map <silent> <leader>t :TlistToggle<cr>

"press jj to enter normal mode while in insert mode
inoremap jj <ESC>




" map ,+h,l,k,j to move to the split window
nnoremap <silent> <leader>h <C-W>h<CR>
nnoremap <silent> <leader>l <C-W>l<CR>
nnoremap <silent> <leader>k <C-W>k<CR> 
nnoremap <silent> <leader>j <C-W>j<CR> 

"nnoremap <silent> jjh <C-W>h<CR>
"nnoremap <silent> jjl <C-W>l<CR>
"nnoremap <silent> jjk <C-W>k<CR> 
"nnoremap <silent> jjj <C-W>j<CR> 





"set customer match pairs let b:match_ignorecase = 0 set matchpairs+=<:>
let b:match_words = &matchpairs.',\<begin\>:\<end\>'
                    \. ',\<ifdef\>:\<endif\>,\<ifndef\>:\<endif\>'
                    \. ',\<class\>:\<endclass\>,\<task\>:\<endtask\>,\<function\>:\<endfunction\>'
                    \. ',\<module\>:\<endmodule\>'
                    \. ',\<program\>:\<endprogram\>'
                    \. ',\<case\>:\<endcase\>'
                    \. ',\<fork\>:\<join_none\>:\<join_any\>:\<join\>'
                    \. ',\<generate\>:\<endgenerate\>'


""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWindowLayout = "BufExplorer,NERDtree|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>


" press ,wm to display winManager window
nmap <silent> <leader>wm :WMToggle<cr> 


""""""""""""""""""""""""""""""
" BufExplorer
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
autocmd BufWinEnter \[Buf\ List\] setl nonumber 

" source .vimrc config
map <silent> <leader>s :source ~/.vimrc<cr>

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

"译注:本句的作用是移走Windows下的^M字符
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"译注:切换到当前目录
map <leader>cd :cd %:p:h<cr>

" 不让vim发出讨厌的滴滴声
set noerrorbells

" 折叠代码
set foldenable             " 开始折叠
set foldmethod=syntax      " 设置语法折叠
set foldcolumn=0           " 设置折叠区域的宽度
setlocal foldlevel=1       " 设置折叠层数为
set foldlevel=100          " 文件打开时不折叠
set foldclose=all          " 设置为自动关闭折叠      


""""""""""""""""""""""""""""""
" NERD tree
""""""""""""""""""""""""""""""
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <F5> :NERDTreeToggle<cr>_



""""""""""""""""""""  
"进行版权声明的设置
"添加或更新头
map <F4> :call TitleDet()<cr>'s
function AddTitle()
    call append( 0, "/*=============================================================================")
    call append( 1, "#       COPYRIGHT NOTICE")
    call append( 2, "#       Copyright (c) 2017")
    call append( 3, "#       All rights reserved")
    call append( 4, "#")
    call append( 5, "#       @Author         : liangx")
    call append( 6, "#       @Company        : Finchos")
    call append( 7, "#       @File           : ".expand("%:p:h")."\\".expand("%:t"))
    call append( 8, "#       @Create date    : ".strftime("%Y/%m/%d %H:%M"))
    call append( 9, "#       @Modified date  : ".strftime("%Y/%m/%d %H:%M"))
    call append(10, "=============================================================================*/")
    call append(11, "")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endfunction

"更新最近修改时间和文件名
function UpdateTitle()
    normal m'
    execute '/#       @Modified date  /s@:.*$@\=strftime(": %Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/#       @File        /s@: .*$@\=": ".expand("%:p:h")."\\".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction

"判断前10行代码里面，是否有COPYRIGHT NOTICE这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function TitleDet()
    let n = 2
"默认为添加
    let line = getline(n)
    let str = '^#       COPYRIGHT NOTICE$'
    if line =~ str
        call UpdateTitle()
        return
    endif
    call AddTitle()
endfunction

autocmd BufNewFile *.v,*.sv,*.vh,*.svh exec ":call TitleDet()"

"HiMatchOn
"" If this variable is set, augroup is defined, and start highlighting.
let g:hl_matchit_enable_on_vim_startup = 1
