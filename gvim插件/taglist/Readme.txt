install details
1. Download the taglist.zip file and unzip the files to the $HOME/.vim or the 
    $HOME/vimfiles or the $VIM/vimfiles directory. After this step, you should 
    have the following two files (the directory structure should be preserved): 

         plugin/taglist.vim - main taglist plugin file 
         doc/taglist.txt    - documentation (help) file 

   Refer to the |add-plugin|, |add-global-plugin| and |runtimepath| Vim 
   help pages for more details about installing Vim plugins. 
2. Change to the $HOME/.vim/doc or $HOME/vimfiles/doc or $VIM/vimfiles/doc 
    directory, start Vim and run the ":helptags ." command to process the 
    taglist help file. Without this step, you cannot jump to the taglist help 
    topics. 
3. If the exuberant ctags utility is not present in your PATH, then set the 
    Tlist_Ctags_Cmd variable to point to the location of the exuberant ctags 
    utility (not to the directory) in the .vimrc file. 
4. If you are running a terminal/console version of Vim and the terminal 
    doesn't support changing the window width then set the 
    'Tlist_Inc_Winwidth' variable to 0 in the .vimrc file. 
5. Restart Vim. 
6. You can now use the ":TlistToggle" command to open/close the taglist 
    window. You can use the ":help taglist" command to get more information 
    about using the taglist plugin.



下载后，把该文件在~/.vim/目录中解压缩，这会在你的~/.vim/plugin和~/.vim/doc目录中各放入一个文件：

plugin/taglist.vim – taglist插件
doc/taglist.txt    - taglist帮助文件 
注：windows用户需要把这个插件解压在你的$vim/vimfiles或$HOME/vimfiles目录。

使用下面的命令生成帮助标签（下面的操作在vim中进行）：

:helptags ~/.vim/doc 
生成帮助标签后，你就可以用下面的命令查看taglist的帮助了：

:help taglist.txt 