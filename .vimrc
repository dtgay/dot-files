" Autoindent
set autoindent

" Map jj to the escape key
inoremap jj <Esc>

" Turn off mouse functionality
set mouse-=a

" 4 line scroll offset
set scrolloff=4

" 4 spaces instead of tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4

" Highlight current line.
hi CursorLine term=bold cterm=bold guibg=Grey40

" Colour scheme
colorscheme pablo

" Syntax highlighting
syntax on

" Shortcut to toggle :set paste (Control-P)
noremap <C-p> :set paste!<CR>

" Show line numbers
set number

" Don't beep at me
set vb

" For syntax highlighting, treat .md as markdown, not modula
au BufRead,BufNewFile *.md set filetype=markdown
