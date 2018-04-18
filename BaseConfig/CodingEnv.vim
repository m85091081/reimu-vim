set autowrite      " Automatically write a file when leaving a modified buffer
set ignorecase     " Case sensitive search
set smartcase      " Case sensitive when uc present
let s:save_cpo = &cpo
set cpo&vim
set undofile             " Persistent undo
set undolevels=1000      " Maximum number of changes that can be undone
set undoreload=10000     " Maximum number lines to save for undo on a buffer reload
set ttyfast                    " Faster redrawing
set autoindent                 " Indent at the same level of the previous line
set autoread                   " Automatically read a file changed outside of vim
set history=10000              " Maximum history record
set showmatch
set backup
filetype on
set backspace=2
set encoding=utf-8  
set termencoding=utf-8
set nofoldenable
