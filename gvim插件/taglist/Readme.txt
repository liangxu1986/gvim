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



���غ󣬰Ѹ��ļ���~/.vim/Ŀ¼�н�ѹ������������~/.vim/plugin��~/.vim/docĿ¼�и�����һ���ļ���

plugin/taglist.vim �C taglist���
doc/taglist.txt    - taglist�����ļ� 
ע��windows�û���Ҫ����������ѹ�����$vim/vimfiles��$HOME/vimfilesĿ¼��

ʹ��������������ɰ�����ǩ������Ĳ�����vim�н��У���

:helptags ~/.vim/doc 
���ɰ�����ǩ����Ϳ��������������鿴taglist�İ����ˣ�

:help taglist.txt 