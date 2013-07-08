version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set cscopeprg=/usr/bin/cscope
set cscopetag
set cscopeverbose
set fileencodings=utf-8,latin1
set guifont=Courier\ 16 
set helplang=en
set history=50
set hlsearch
set mouse=a
set ruler
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set smartindent
set smarttab
set termencoding=utf-8
set viminfo='20,\"50
set window=24
set number
set nohlsearch
inoremap { {<CR><BS>}<Esc>ko
filetype plugin on

" HMTL editing
"""imap ,/ </<C-X><C-O>

" Coloring
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
