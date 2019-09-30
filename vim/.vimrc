set t_Co=256
set number
syntax on
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
filetype on
set guifont=Inconsolata-Regular:h20

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'dkarter/bullets.vim' 
" List ends here. Plugins become visible to Vim after this call.
call plug#end()


let g:bullets_enabled_file_types = ['markdown', 'text', 'gitcommit']

