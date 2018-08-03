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

" Scroll 5 lines using up and down keys
noremap <Up> 5k
noremap <Down> 5j

" Don't beep at me
set vb

" Enable powerline fonts
"source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
"set laststatus=2

" Make backspace work 'like normal' (start, eol, and indents)
set backspace=indent,eol,start

" vimwiki prereqs
set nocompatible
filetype plugin on
syntax on
