source ~/.vim/reimu-vim/Nocompatible.vim
for f in split(glob('~/.vim/reimu-vim/BaseConfig/*.vim'), '\n')
    exe 'source' f
endfor
for f in split(glob('~/.vim/reimu-vim/PlugConfig/*.vim'), '\n')
    exe 'source' f
endfor
