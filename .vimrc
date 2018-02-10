" Enable syntax highlighting
syntax on

" Enable autoindent
set autoindent

" Map jj to the escape key
inoremap jj <Esc>

" Show line numbers
set number

" Highlight the current line
hi CursorLine term=bold cterm=bold guibg=Grey40

" Turn off mouse functionality
set mouse-=a

" 4 line scroll offset
set scrolloff=4

" Don't beep at me
set vb

" Enable powerline fonts
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
