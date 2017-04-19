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


���غ󣬰Ѹ��ļ���~/.vim/Ŀ¼�н�ѹ��������winmanager�����ѹ��~/.vim/plugin��~/.vim/docĿ¼�У�

plugin/winmanager.vim �C winmanager���
plugin/winfileexplorer.vim  - ������Explorer���
plugin/wintagexplorer.vim �C winmanager�ṩ��tag������ô�����
doc/winmanager.txt �C �����ļ� 
��Ȼ�á�:helptags ~/.vim/doc�����������ɰ�����ǩ��Ȼ��Ϳ���ʹ�á�:help winmanager�����鿴�����ˡ�

ʹ��winmanager������Կ��Ƹ������vim�����еĲ�����ʾ���ҵ�vimrc���������ã�

""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr> 

����BufExplorer������ʹ�á�CTRL-N�������л���FileExplorer���ڣ���ʹ��һ�������л���BufExplorer���ڡ�Ҳ����˵���ڱ���g:winManagerWindowLayout�У�ʹ�á�,���ָ��Ĳ������ͬһ����������ʾ��ʹ�á�CTRL-N���ڲ�ͬ������л���ʹ�á�|���ָ��Ĳ������������һ����������ʾ��

����Ļ�ұߵĴ����������༭����

�������vimrc�����У���������������ӳ�䣬�ֱ������������ϴ��ڡ����´��ڣ��Լ���ʾ/�ر�winmanager���ڡ�

ע����װ�����δ����g:winManagerWindowLayout������winmanager�����Ҫ��BufExplorer���һ�����ʹ�á�������Ҫ����BufExplorer��
