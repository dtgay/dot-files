" Enable syntax highlighting
syntax on

" Disable word wrap
set nowrap

" Enable autoindent
set autoindent

" Map jk and kj to the escape key
inoremap jk <Esc>
inoremap kj <Esc>

" Show line numbers
set number
set relativenumber
" Hide line numbers in markdown files
"autocmd filetype markdown setlocal nonumber

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

" Set markdown syntax highlighting for *.md files
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
autocmd filetype markdown set syntax=markdown

" By pressing F3, insert a bolded current time in 24 hour format, followed
" by a hyphen, for beginning a log entry
nmap <F3> i*<C-R>=strftime("%H:%M")<CR>* -
imap <F3> *<C-R>=strftime("%H:%M")<CR>* - 

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

" Show ruler at column 80
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Keeps at least three lines visibile at the top and bottom of screen
set scrolloff=3

" Switch between different windows by their direction`
no <C-j> <C-w>j| "switching to below window
no <C-k> <C-w>k| "switching to above window
no <C-l> <C-w>l| "switching to right window
no <C-h> <C-w>h| "switching to left window

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
Plug 'morhetz/gruvbox'
"Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
call plug#end()
" END vim-plug

" NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>

" Color scheme
colorscheme gruvbox

" True color support
set termguicolors
