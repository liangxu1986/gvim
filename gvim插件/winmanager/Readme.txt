install details
For version >= 2.0 
============= 
1. copy the file to your $HOME/.vim or $HOME\vimfiles directory 

2. unzip it (its a zip file) at that location. this should create the files 
   - plugin/ 
       winmanager.vim 
       winfileexplorer.vim 
       wintagexplorer.vim 
   - doc/ 
       winmanager.txt 

   IMPORTANT NOTE: 
   
   i  . This version of winmanager ONLY works if you have the latest version 
        bufexplorer.vim. (vimscript #42). 
        The idea is that winmanager will no longer contain a duplicate copy 
        of bufexplorer.vim. This reduces script bloat, makes updates easier 
        and in genral makes the world a better place. 
   
3. vim -c "helptags ~/.vim/doc" -c "q"  (unix) 
   or 
   vim -c "helptags ~/vimfiles/doc" -c "q"  (windows) 
   (this step should install winmanager.txt as a local help file on your 
   system. if this doesnt work, see ":he add-local-help" to see how to do 
   it). 

You will also need to change the mappings you might have used with 
winmanager-1.x to 

    map <c-w><c-f> :FirstExplorerWindow<cr> 
    map <c-w><c-b> :BottomExplorerWindow<cr> 
    map <c-w><c-t> :WMToggle<cr> 

and the variable name g:bufExplorerWidth has been changed to 
g:winManagerWidth just to be more consistent. 


下载后，把该文件在~/.vim/目录中解压缩，这会把winmanager插件解压到~/.vim/plugin和~/.vim/doc目录中：

plugin/winmanager.vim – winmanager插件
plugin/winfileexplorer.vim  - 改良的Explorer插件
plugin/wintagexplorer.vim – winmanager提供的tag插件，用处不大
doc/winmanager.txt – 帮助文件 
仍然用”:helptags ~/.vim/doc“命令来生成帮助标签，然后就可以使用”:help winmanager“来查看帮助了。

使用winmanager插件可以控制各插件在vim窗口中的布局显示。我的vimrc中这样设置：

""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr> 

，在BufExplorer窗口中使用”CTRL-N“可以切换到FileExplorer窗口，再使用一次则又切换回BufExplorer窗口。也就是说，在变量g:winManagerWindowLayout中，使用”,”分隔的插件，在同一个窗口中显示，使用”CTRL-N“在不同插件间切换；使用”|”分隔的插件，则在另外一个窗口中显示。

在屏幕右边的窗口则是主编辑区。

在上面的vimrc设置中，还定义了三个键映射，分别用于跳到左上窗口、左下窗口，以及显示/关闭winmanager窗口。

注：安装后，如果未设置g:winManagerWindowLayout变量，winmanager插件需要与BufExplorer插件一起才能使用。所以需要下载BufExplorer。
