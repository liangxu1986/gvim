install details
1. Download supertab.vmb to any directory. 
2. Open the file in vim ($ vim supertab.vmb). 
3. Source the file (:so %).

after installation
add the following lines to .vimrc file:
let g:SuperTabRetainCompletionType = 2
let g:SuperTabDefaultCompletionType = "<C-N><C-P>"