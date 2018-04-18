filetype plugin on
call plug#begin('~/.vim/plugged')
for f in split(glob('~/.vim/reimu-vim/PlugList/*.vim'), '\n')
    exe 'source' f
endfor
call plug#end()
