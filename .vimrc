" Enable syntax highlighting
syntax on

" Enable autoindent
set autoindent

" Map jj to the escape key
inoremap jj <Esc>

" Show line numbers
set number

" Set line length to 80 characters
set textwidth=80

" Highlight the current line
set cursorline
hi CursorLine cterm=NONE ctermbg=235
hi CursorLineNr term=bold cterm=bold ctermfg=075

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

" Keeps at least three lines visibile at the top and bottom of screen
set scrolloff=3

" Insert two spaces upon pressing tab
set expandtab
" Show existing tabs with 2 spaces width
set tabstop=2
set softtabstop=2
" When indenting with '>', use 2 spaces width
set shiftwidth=2

" Fenced code block syntax highlighting in md files
let g:markdown_fenced_languages = ['html', 'ruby', 'python', 'bash=sh', 'js=javascript', 'json=javascript']

" START vim-plug
call plug#begin()
Plug 'preservim/nerdtree'
call plug#end()
" END vim-plug

" START NERDTree
map <C-n> :NERDTreeToggle<CR>
" Switch between different windows by their direction`
no <C-j> <C-w>j| "switching to below window
no <C-k> <C-w>k| "switching to above window
no <C-l> <C-w>l| "switching to right window
no <C-h> <C-w>h| "switching to left window
" END NERDTree
