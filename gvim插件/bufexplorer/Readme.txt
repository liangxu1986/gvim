
created by
jeff lanzarotta
 
script type
utility
 
description
With bufexplorer, you can quickly and easily switch between buffers by using the one of the default public interfaces: 

  '\be' (normal open)  or 
  '\bs' (force horizontal split open)  or 
  '\bv' (force vertical split open) 

Once the bufexplorer window is open you can use the normal movement keys (hjkl) to move around and then use <Enter> or <Left-Mouse-Click> to select the buffer you would like to open. If you would like to have the selected buffer opened in a new tab, simply press either <Shift-Enter> or 't'. Please note that when opening a buffer in a tab, that if the buffer is already in another tab, bufexplorer can switch to that tab automatically for you if you would like. More about that in the supplied VIM help. 

Bufexplorer also offers various options including: 
- Display the list of buffers in various sort orders including: 
    - Most Recently Used (MRU) which is the default 
    - Buffer number 
    - File name 
    - File extension 
    - Full file path name 
- Delete buffer from list 

For more about options, sort orders, configuration options, etc. please see the supplied VIM help.
 
install details
Simply unzip bufexplorer.zip into a directory in your 'runtimepath', usually ~/.vim or c:\vimfiles, and restart Vim. This zip file contains plugin\bufexplorer.vim, and doc\bufexplorer.txt.  See ':help add-local-help' on how to add bufexplorer.txt to vim's help system. 

NOTE: Version 7.0.12 and above will ONLY work with 7.0 and above of Vim. 
NOTE NOTE NOTE: If you have a version prior to 7.1.2 that contains an autoload\bufexplorer.vim file, please REMOVE the autoload\bufexlorer.vim AND the plugin\bufexplorer.vim files before installing a new version.


使用下面的命令生成帮助标签（下面的操作在vim中进行）：

:helptags ~/.vim/doc 
然后，就可以使用”:help bufexplorer“命令查看BufExplorer的帮助文件了。

BufExplorer功能比较简单，这里就不做介绍了。我的vimrc里这样设置BufExplorer插件：

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
BufExplorer已经映射了几个键绑定，例如，使用”,bv“就可以打开一个垂直分割窗口显示当前的缓冲区。