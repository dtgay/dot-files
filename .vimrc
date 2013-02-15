syntax on

set autoindent

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4

imap ii <Esc>

colorscheme vividchalk

" shortcut to toggle set paste (Control-P)
nmap <C-p> :set paste!<CR>

" hilight bad whitespace (for Python)
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.rst match BadWhitespace /*\t\*/
au BufRead,BufNewFile *.rst match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py match BadWhitespace /*\t\*/
au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/
