set t_Co=256
set number
syntax on
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
filetype on
set guifont=Inconsolata-Regular:h20
