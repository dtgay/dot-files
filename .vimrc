syntax on

set autoindent

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4

imap jj <Esc>

colorscheme vividchalk

" shortcut to toggle set paste (Control-P)
nmap <C-p> :set paste!<CR>

" hilight bad whitespace (for Python)
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.rst match BadWhitespace /*\t\*/
au BufRead,BufNewFile *.rst match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py match BadWhitespace /*\t\*/
au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/

" PEP8 checker for .py files... mmm, PEP8
" Read this to set up (easy):
" http://www.vim.org/scripts/script.php?script_id=2914
au BufWritePost *.py !pep8 %

" Line numbers
set number
