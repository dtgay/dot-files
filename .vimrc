" This is a must!
set autoindent

" Awesome indentation stuff: 4 spaces instead of a tab, all handled perfectly!
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4

" Check Python code.
au BufWritePost *.py !pyflakes %
" Run PEP8 against Python code.
au BufWritePost *.py !pep8 %

" Set the color scheme (vividchalk suggested by Qalthos!)
colorscheme vividchalk

" Be able to paste into Vim without indentation errors using ',ip'
let mapleader = ","
map <Leader>ip :set invpaste invnumber invlist<CR>
